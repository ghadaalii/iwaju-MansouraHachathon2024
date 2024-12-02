import { createClient } from '@supabase/supabase-js';

const supabaseUrl = 'https://vxklexutlqkyqzaakfvn.supabase.co';
const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZ4a2xleHV0bHFreXF6YWFrZnZuIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzMwNTkzMzgsImV4cCI6MjA0ODYzNTMzOH0.wFZaNhYEWWoIP09kS6XVqpCiUyI00lpfNaSGLZ51H80';

export const supabase = createClient(supabaseUrl, supabaseKey);