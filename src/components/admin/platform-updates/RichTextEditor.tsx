'use client'

import { forwardRef, useEffect, useImperativeHandle, useRef } from 'react'
import { Box, Button } from '@mui/material'
import { docToHtml, htmlToDoc, safeHref, type RichTextDoc } from '@/lib/platform-updates/document'

type RichTextEditorProps = {
  seed: string
  value: RichTextDoc
  onChange: (doc: RichTextDoc) => void
}

export type RichTextEditorHandle = {
  flush: () => RichTextDoc
}

const RichTextEditor = forwardRef<RichTextEditorHandle, RichTextEditorProps>(function RichTextEditor ({
  seed,
  value,
  onChange,
}, handle) {
  const ref = useRef<HTMLDivElement>(null)
  const onChangeRef = useRef(onChange)
  const valueRef = useRef(value)
  onChangeRef.current = onChange
  valueRef.current = value

  const read = () => {
    const el = ref.current
    const doc = el ? htmlToDoc(el.innerHTML) : valueRef.current
    onChangeRef.current(doc)
    return doc
  }

  useImperativeHandle(handle, () => ({ flush: read }))

  useEffect(() => {
    const el = ref.current
    if (!el) return
    el.innerHTML = docToHtml(valueRef.current)
  }, [seed])

  const publish = () => {
    read()
  }

  const run = (command: string, arg?: string) => {
    ref.current?.focus()
    document.execCommand(command, false, arg)
    publish()
  }

  const addLink = () => {
    const href = window.prompt('ลิงก์ https://')?.trim() ?? ''
    const safe = safeHref(href)
    if (!safe) return
    run('createLink', safe)
  }

  return (
    <Box>
      <Box sx={{ display: 'flex', flexWrap: 'wrap', gap: 0.5, mb: 1 }}>
        <Button size="small" variant="outlined" onMouseDown={(event) => event.preventDefault()} onClick={() => run('bold')}>B</Button>
        <Button size="small" variant="outlined" onMouseDown={(event) => event.preventDefault()} onClick={() => run('italic')}>I</Button>
        <Button size="small" variant="outlined" onMouseDown={(event) => event.preventDefault()} onClick={() => run('formatBlock', 'h2')}>H2</Button>
        <Button size="small" variant="outlined" onMouseDown={(event) => event.preventDefault()} onClick={() => run('insertUnorderedList')}>รายการ</Button>
        <Button size="small" variant="outlined" onMouseDown={(event) => event.preventDefault()} onClick={() => run('insertOrderedList')}>ลำดับ</Button>
        <Button size="small" variant="outlined" onMouseDown={(event) => event.preventDefault()} onClick={addLink}>ลิงก์</Button>
      </Box>
      <Box
        ref={ref}
        contentEditable
        role="textbox"
        aria-label="คำอธิบาย"
        onInput={publish}
        suppressContentEditableWarning
        sx={{
          minHeight: 140,
          border: '1px solid',
          borderColor: 'divider',
          borderRadius: 2,
          px: 1.5,
          py: 1,
          outline: 'none',
          '&:focus': { borderColor: 'primary.main' },
          '& p': { m: 0 },
        }}
      />
    </Box>
  )
})

export default RichTextEditor
