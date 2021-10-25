- We are using Pop!\_OS.

- Add apt packages + flatpaks

- Install all packages automatically

- Document Settings (e.g. Dock, "Night Light")
    - Automate this? Should be possible with GNOME command line utilities (gsettings)

- Uninstall Firefox

- Add Microsoft Edge Beta repository

- Add Sublime Text repository

- Incorporate `mkdir -p` into `functions/copy_file`
    - See `scripts/defaults-app-write.sh`
    - Make sure we only create the dir if the output of `copy_file` is indeed a dir; we don't want to create a dir when the output is a file
        - Only create dir if output ends with `/`?
            - Edge case: output is a dir, but doesn't end with `/`
                - E.g. `copy_file in_dir/ out_dir` will copy the files in `in_dir` to inside of `out_dir`, but `out_dir` will not be created by `copy_file`
                - `copy_file in_dir/ out_dir/` does the same but I don't want to remember to put a slash at the end of my out_dirs
        - Only use `copy_file` as in `copy_file in_dir parent_of_out_dir`? (see `scripts/defaults-app-write.sh`)
            - Edge case: name of `in` is different than that of `out` (see `install-dotfiles.sh`)
                - E.g. we want to copy `configs/apple` to `~/configs/pear`; `copy_file configs/apple ~/configs` will not work
        - Check if `$_input` is file or directory?
            - This should work...
            - If file: create parent dir of `$_output`
                - What if we're copying `in_file` into an `out_dir` that already exists?
                    - `mkdir -p` will continue silently
            - If folder: create dir `$_output`
