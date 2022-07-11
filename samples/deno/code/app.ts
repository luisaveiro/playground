import { serve } from "https://deno.land/std/http/server.ts";

/** Render Hello, World! */
serve(req => new Response("Hello, World!\n"));
