astyle --style=gnu --indent=spaces=4 --indent-switches --indent-labels --indent-preprocessor --indent-col1-comments --break-blocks --delete-empty-lines --align-pointer=name --break-after-logical --lineend=windows --suffix=none --recursive  Sources/*.h  Sources/*.c 

rem gc -dir-./Sources  -no-cmt_add_gc_tag-  -no-space_cast_after- -no-tab_out- -tab_size-4 -stmt_switch_style-1 - -space_paren-0 -stmt_static_init_style-3   -cmt_force_fct_def_decl_split- -code_remove_empty_lines-2 -cmt_sepp_eol_before-1 -cmt_sep_eol_after-1



PAUSE
