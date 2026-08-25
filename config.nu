# Nushell Config - ULTRA FAST for WezTerm
# ===============================
# ---------- ZOXIDE & TERMINAL ----------
$env.config.show_banner = false
$env.config.shell_integration.osc7 = true
let zpath = "C:/Users/kshit/.zoxide.nu"
if not ($zpath | path exists) {
    zoxide init nushell | save -f $zpath
}
source "C:/Users/kshit/.zoxide.nu"
# ---------- ALIASES ----------
alias nn = exec nu
alias ll = ls --long
alias lz = lazygit
alias yz = yazi
alias ff = fastfetch --logo "C:/Users/kshit/.config/fastfetch/ascii.txt"

# ---------- GIF COMMANDS HELP ----------
def gifhelp [] {
    print (ansi green_bold)
    print "🎬 GIF & Media Commands Help"
    print (ansi reset)
    print ""
    
    print (ansi cyan_bold) + "Main Commands:" + (ansi reset)
    print "  gifpeek search <query>     - Search and display random GIF"
    print "  gifpeek trending           - Get random trending GIF"
    print "  gif2img <gif> [output]     - Convert GIF first frame to PNG"
    print ""
    
    print (ansi cyan_bold) + "gifpeek Options:" + (ansi reset)
    print "  --format <gif|mp4|webp>    - Output format (default: gif)"
    print "  --quality <hd|md|sm|xs>    - Quality level (default: hd)"
    print "  --resize <wezterm|web|WxH> - Resize output"
    print "  --save-path <path>         - Save to specific file"
    print "  --no-preview               - Skip WezTerm preview"
    print "  --per-page <n>             - Number of results (default: 20)"
    print ""
    
    print (ansi magenta_bold) + "Features:" + (ansi reset)
    print "  • Always previews as PNG in WezTerm (using imgcat)"
    print "  • Auto-names files based on query: cat.gif, cat_1.gif, etc."
    print "  • Auto-increments filename if file exists"
    print "  • Random selection from 20 results for variety"
    print "  • Cleans up temp files automatically"
    print ""
    
    print (ansi cyan_bold) + "Examples:" + (ansi reset)
    print '  gifpeek search cat                    # cat.gif, cat_1.gif, etc.'
    print '  gifpeek search dog --format mp4       # dog.mp4'
    print '  gifpeek search cat --resize wezterm   # cat_resized.gif'
    print '  gifpeek search cat --resize web       # Web-optimized (800px)'
    print '  gifpeek trending --no-preview         # trending.gif'
    print '  gifpeek search cat --save-path ./my.gif --format gif --quality hd'
    print ""
    
    print (ansi yellow_bold) + "Note: Files are named automatically based on your search query!" + (ansi reset)
}
# ---------- EDITOR ----------
$env.EDITOR = "hx"
$env.config.buffer_editor = "hx"
# ---------- VIM MODE ----------
$env.config.edit_mode = "vi"
# ---------- CUSTOM WELCOME BANNER ----------
# if $nu.is-interactive {
#     print (ansi magenta_bold)
#     print "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⣿⣿⣿⣿⣷⢸⣿⣿⡜⢯⣷⡌⡻⣿⣿⣿⣆⢈⠻⠿⢿⣿⣿⣿⣿⣿⣿⣷⣦⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
#     print "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡁⢳⣿⣿⣿⣿⣿⣿⡜⣿⣿⣧⢀⢻⣷⠰⠈⢿⣿⣿⣧⢣⠉⠑⠪⢙⠿⠿⠿⠿⠿⠿⠿⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
#     print "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣱⡇⡞⣿⣿⣿⣿⣿⣿⡇⣿⣿⡏⡄⣧⠹⡇⠧⠈⢻⣿⣿⡇⢧⢢⠀⠀⠑⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
#     print "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣇⢃⢿⣿⣿⣿⣿⣿⣷⣿⣿⠇⢃⣡⣤⡹⠐⣿⣀⢻⣿⣿⢸⡎⠳⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
#     print "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣾⣿⣿⠘⡸⣿⣿⣿⣿⣿⣿⣿⡿⣰⣿⣿⢟⡷⠈⠋⠃⠎⢿⣿⡏⣿⠀⠘⢆⠀⠀⠀⠀⠀"
#     print "⠀⠀⠀⠀⠀⠀⠀⠀⠀⡐⢹⣿⣿⡐⢡⢹⣿⣿⣿⣿⡏⣿⢣⣿⣿⡑⠁⠔⠀⠉⠉⠢⡘⣿⡇⣿⡇⠀⡀⠡⡀⠀⠀⠀⠀⠀⠀⠀⠀"
#     print "⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠘⣿⣿⣇⠇⢣⢻⣿⣿⣿⡇⢇⣾⣿⣿⡆⢸⣤⡀⠚⢂⠀⢡⢿⡇⣿⡇⠀⢿⠀⠀⠄⠀⠀⠀"
#     print "⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠠⠹⣿⣿⡘⣆⢣⠻⣿⣿⢈⣾⣿⣿⣿⣶⣸⣏⢀⣬⣋⡼⣠⢸⢹⣿⡇⢠⣼⠙⡄⠀⠀⠀⠀⠀"
#     print "⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⡇⠁⠹⣿⣇⠹⡃⠃⠙⡇⠘⢿⣿⣿⣿⣿⣿⣏⣓⣉⣭⣴⣿⠘⢸⣿⠁⠘⠋⠀⠹⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
#     print "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢷⠀⠀⠈⢿⣇⠂⣷⠄⠐⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢠⢸⡏⠀⢀⣠⣴⣾⣿⣶⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
#     print "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢆⠀⠀⠀⠙⠆⠈⠢⠲⠥⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡞⣸⠁⠀⢸⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀"
#     print "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠄⠃⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀"
#     print "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣿⣿⣿⡏⠹⣿⣿⡿⠫⠊⠀⠀⠀⣶⠀⢻⣿⣿⣿⣿⡿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
#     print "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠛⠻⠿⠿⠿⢋⠀⠀⠀⠀⢀⣼⣿⡆⠈⣿⣿⣿⡟⣱⡷⠀⠀⠀⠀⠀⠀⠀⠀"
#     print "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢁⣁⡀⠨⣛⠿⠶⠄⢀⣠⣾⣿⣿⣷⠀⢹⣿⡟⣴⠈⢃⣶⠔⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
#     print "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⣿⣿⡄⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠈⣿⣿⡿⠀⡀⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
#     print "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢙⠻⣿⣿⢀⠙⠻⠿⣿⣿⣿⣿⣿⣿⡇⠁⣿⠟⡀⠈⣧⢰⣿⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
#     print "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠿⠴⠮⣥⠻⢧⣤⣄⣀⡉⢩⣭⣍⣃⣀⣩⠎⢀⣼⠉⣼⡯⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
#     print "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⠁⣛⠓⢒⣒⣢⡭⢁⡈⠿⠿⠟⠹⠛⠁⠀⠀⠀⠰⠃⠂⠀⠀⠀"
#     print (ansi cyan_bold)
#     print "        Did you grab your Coffee? "
#     print ""
#     print (ansi yellow_bold)
#     print "          K S H I T I Z   M A I N A L Y"
#     print "                .......WELCOME"
#     print (ansi reset)
# }
# ---------- PROMPT (OH-MY-POSH) ----------
# source ~/.oh-my-posh.nu
def wrn [
    name?: string
] {
    let newname = if $name == null {
        input "Workspace name: "
    } else {
        $name
    }
    wezterm cli rename-workspace $newname
}
# (Prompt indicators are handled natively by Oh-My-Posh)
# ---------- BASH ALIAS ----------
alias bash = ^"C:\\Program Files\\Git\\bin\\bash.exe"
alias dir = bash -c "dir"

# ---------- CUSTOM KEYBINDINGS ----------
$env.config = ($env.config | upsert keybindings (
    ($env.config.keybindings | default []) | append [
        # Shift+U → redo (keep your existing behavior)
        {
            name: redo
            modifier: shift
            keycode: char_u
            mode: vi_normal
            event: { edit: redo }
        }
        # 0 → go to start of line
        {
            name: start_of_line
            modifier: none
            keycode: char_0
            mode: vi_normal
            event: { edit: movetolinestart }
        }
        # 4 → go to end of line
        {
            name: end_of_line
            modifier: none
            keycode: char_4
            mode: vi_normal
            event: { edit: movetolineend }
        }
        # Alt+d → delete word forward
        {
            name: helix_alt_d_delete_word
            modifier: alt
            keycode: char_d
            mode: vi_normal
            event: { edit: deleteword }
        }
        # x → delete character under cursor (vi-style)
        {
            name: vi_x_delete_char
            modifier: none
            keycode: char_x
            mode: vi_normal
            event: { edit: cutchar }
        }
        
   ]
))
# longer version of dictonary seach 
def define [word: string] {
    let url = $"https://api.dictionaryapi.dev/api/v2/entries/en_US/($word)"
    let res = try {
        http get $url
    } catch {
        print $"❌ No definition found for '($word)'"
        return
    }
    let meaning = $res.0.meanings.0
    let definition = $meaning.definitions.0.definition
    let examples = (
        $meaning.definitions
        | where example? != null
        | get example
        | first 3
    )
    print $"📘 ($word)\n"
    print "Meaning:"
    print $definition
    if ($examples | length) > 0 {
        print "\nExamples:"
        $examples | each {|ex| print $"• ($ex)" }
    }
}
# olama mode
def pookie [] { ollama run gemma3:1b }
def img [file:path] {wezterm imgcat $file }
# // to convert gif to image , it takes first frame and convert it to image
def gif2img [gif: path, out?: path] {
  let output = if ($out == null) {
    ($gif | path parse | update extension "png" | path join)
  } else {
    $out
  }
  ffmpeg -loglevel error -y -i $gif -vf thumbnail -frames:v 1 $output
  # instant wezterm preview
  wezterm imgcat $output
}
# full automated script, it will fetch to the api search and grap the first url , download it locally ,conver the best looking
# to png and preview inline in wezterm 
# Helper function to find next available filename with auto-increment
def find-next-filename [base: string, ext: string, counter: int = 0] {
    let candidate = if $counter == 0 { $"($base).($ext)" } else { $"($base)_($counter).($ext)" }
    if ($candidate | path exists) {
        find-next-filename $base $ext ($counter + 1)
    } else {
        $candidate
    }
}
# Enhanced gifpeek with random selection, highest-res fetching, and optional resize
# Always previews as PNG in WezTerm, uses query-based filenames with auto-increment
def gifpeek [
    mode: string                     # "trending" or "search"
    query: string = ""               # Search query (for search mode)
    --per-page: int = 20             # Number of results to fetch
    --page: int = 1                  # Page number
    --locale: string = "en_US"       # Locale
    --customer-id: string = "default" # Customer ID
    --content-filter: string = "low" # Content filter
    --format: string = "gif"         # "gif", "mp4", "webp"
    --quality: string = "hd"         # "hd", "md", "sm", "xs"
    --resize: string = ""            # "wezterm" (480px), "web" (800px), or "WxH"
    --save-path: path = ""           # Optional save path
    --no-preview                     # Skip WezTerm preview
] {
    # Build API URL
    let url = if $mode == "trending" {
        $"https://api.klipy.com/api/v1/mW1p7rfhy3PReAy8ECu7Br3DJimdtjY9l2UybZX13kHzBRgFX7WpAiBAQ8LWWEI3/gifs/trending?page=($page)&per_page=($per_page)&customer_id=($customer_id)&locale=($locale)"
    } else {
        $"https://api.klipy.com/api/v1/mW1p7rfhy3PReAy8ECu7Br3DJimdtjY9l2UybZX13kHzBRgFX7WpAiBAQ8LWWEI3/gifs/search?page=($page)&per_page=($per_page)&q=($query)&customer_id=($customer_id)&locale=($locale)&content_filter=($content_filter)"
    }
    # Fetch API response
    let raw = (curl $url --header 'Content-Type: application/json' --silent)
    let json = ($raw | from json)
    # Get GIF list
    let gifs = $json.data.data
    if ($gifs | is-empty) {
        echo $"❌ No GIFs found for '($query)'"
        return
    }
    # Pick a random GIF
    let random_index = (random int 0..(($gifs | length) - 1))
    let gif_data = ($gifs | get $random_index)
    let display_index = ($random_index + 1)
    let total_count = ($gifs | length)
    echo $"🎲 Selected GIF ($display_index) of ($total_count): ($gif_data.title)"
    # Determine file extension
    let ext = match $format {
        "mp4" => "mp4"
        "webp" => "webp"
        _ => "gif"
    }
    # Get media URL
    let media_url = match $format {
        "mp4" => ($gif_data.file | get $quality | get mp4 | get url)
        "webp" => ($gif_data.file | get $quality | get webp | get url)
        _ => ($gif_data.file | get $quality | get gif | get url)
    }
    if $media_url == null {
        echo $"❌ No ($format) URL found at ($quality) quality"
        return
    }
    # Generate filename based on query with auto-increment
    let base_name = if $mode == "trending" { "trending" } else { $query }
    let safe_name = ($base_name | str replace -a '[^a-zA-Z0-9]' '_')
    
    let output_file = if ($save_path | is-empty) {
        find-next-filename $safe_name $ext
    } else {
        $save_path
    }
    # Download media
    echo $"📥 Downloading ($format) ($quality)..."
    curl -L $media_url -o $output_file
    # Handle resizing if requested
    let final_file = if ($resize | is-empty) {
        $output_file
    } else {
        # Generate resized filename with auto-increment
        let resized_ext = $ext
        let resized_base = ($output_file | path parse | get stem)
        let resized_file = (find-next-filename $"($resized_base)_resized" $resized_ext)
        
        let resize_filter = match $resize {
            "wezterm" => "scale=480:-1"
            "web" => "scale=800:-1"
            _ => $"scale=($resize)" # Custom WxH like "640:480"
        }
        echo $"🔄 Resizing to ($resize)..."
        if $format == "mp4" {
            do -i { ffmpeg -y -i $output_file -vf $resize_filter -c:v libx264 -preset fast -crf 23 $resized_file } | ignore
        } else if $format == "webp" {
            do -i { ffmpeg -y -i $output_file -vf $resize_filter -quality 85 $resized_file } | ignore
        } else {
            do -i { ffmpeg -y -i $output_file -vf $"($resize_filter),split[s0][s1];[s0]palettegen=max_colors=128[p];[s1][p]paletteuse" -loop 0 $resized_file } | ignore
        }
        # Cleanup original file
        rm -f $output_file
        $resized_file
    }
    # Always generate PNG preview for WezTerm (unless --no-preview)
    if not $no_preview {
        let preview_base = ($final_file | path parse | get stem)
        let preview_file = $"($preview_base)_preview.png"
        
        echo $"👁️ Generating preview..."
        do -i { ffmpeg -y -i $final_file -vf "thumbnail,scale=480:-1" -frames:v 1 $preview_file } | ignore
        if ($preview_file | path exists) {
            do -i { wezterm imgcat $preview_file } | ignore
            # Clean up preview file after displaying
            rm -f $preview_file
        } else {
            echo "⚠️ Preview generation failed"
        }
    }
    # Show final info
    echo $"✅ Saved: ($final_file)"
    echo $"🔗 Original URL: ($media_url)"
}
# gifpeek search cat                    # Random cat GIF
# gifpeek search dog --format mp4        # MP4, full quality
# gifpeek search cat --resize web        # Resize for web
# gifpeek trending --no-preview          # Just download trending GIF
# gifpeek search cat --save-path ./cat.gif

# ---------- WEZTERM: git branch in tab + long-command notify ----------
# Nushell strings have no \e or \a escapes, so build ESC/BEL from unicode.
$env.config.hooks.pre_prompt = ($env.config.hooks.pre_prompt | append {||
    let ESC = "\u{1b}"
    let BEL = "\u{7}"

    # 1) Publish the current git branch as a WezTerm user var.
    #    Cached per-directory — only re-runs git when you cd to a new folder.
    let cache_dir = ($env.TEMP? | default "/tmp")
    let cache_file = ($cache_dir | path join "wezterm_branch.txt")
    let cwd = $env.PWD
    let cached = (if ($cache_file | path exists) { open $cache_file | lines } | default [])
    let cached_cwd = (if ($cached | length) >= 1 { $cached | get 0 } | default "")
    let branch = if $cached_cwd == $cwd {
        if ($cached | length) >= 2 { $cached | get 1 } else { "" }
    } else {
        let b = (do -i { ^git symbolic-ref --quiet --short HEAD } | complete | get stdout | str trim)
        $"($cwd)
($b)" | save -f $cache_file
        $b
    }
    print -n $"($ESC)]1337;SetUserVar=git_branch=($branch | encode base64)($BEL)"

    # 3) Report current directory to Windows Terminal (OSC 9;9)
    #    So split panes open in the same directory
    if $env.WT_SESSION? != null {
        print -n $"($ESC)]9;9;\"($env.PWD)\"($BEL)"
    }

    # 2) Desktop toast when the previous foreground command ran longer than the
    #    threshold. Fires regardless of which tab is focused; tune below.
    let threshold_ms = 10000
    let dur = ($env.CMD_DURATION_MS? | default "0" | into int)
    if $dur > $threshold_ms {
        let secs = ($dur / 1000 | math round --precision 1)
        let last = (do -i { history | last 1 | get command.0 } | default "command" | str trim)
        print -n $"($ESC)]777;notify;Done in ($secs)s;($last)($BEL)"
    }
})
