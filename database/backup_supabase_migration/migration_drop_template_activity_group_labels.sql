-- Migration: Remove category_label and subcategory_label from template_activity_groups
-- These were only used for import data; category is now derived from scope_category_id selection.

ALTER TABLE template_activity_groups DROP COLUMN IF EXISTS category_label;
ALTER TABLE template_activity_groups DROP COLUMN IF EXISTS subcategory_label;
