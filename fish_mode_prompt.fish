function fish_mode_prompt --description 'Display vi prompt mode'
  # Do nothing if not in vi mode
  if test "$fish_key_bindings" = fish_vi_key_bindings
    or test "$fish_key_bindings" = fish_hybrid_key_bindings
    switch $fish_bind_mode
      case default
        tint: red N
      case insert
        tint: green I
      case replace_one
        tint: green R
      case replace
        tint: cyan R
      case visual
        tint: magenta V
    end
    set_color normal
  end
end

