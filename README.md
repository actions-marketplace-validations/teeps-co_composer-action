# Use Composer CLI in Teeps Github Actions

This action exposes Composer CLI interactions

## Inputs

- `interaction` - Whether to ask any interactive questions - yes / no (default no)
- `suggest` - Whether to show package suggestions - yes / no (default no)
- `dev` - Whether to install dev packages - yes / no (default yes)
- `progress` - Whether to output download progress - yes / no (default no)
- `quiet` - Whether to suppress all messages - yes / no (default no)
- `args` - Optional arguments to pass - no constraints (default empty)
- `only_args` - Only run the desired command with this args. Ignoring all other provided arguments(default empty)
- `php_version` - Choose which version of PHP you want to use (7.1, 7.2, 7.3, 7.4 or 8.0)
- `composer_version` - Choose which version of Composer you want to use (1 or 2)

## Outputs

### `time`

The time it took to deploy Composer libraries

## Example usage

```
jobs:
  build:

    ...

    - name: Install dependencies
      uses: teeps-co/composer-action@v1
      with:
        suggest: yes
        dev: no
        args: --profile --ignore-platform-reqs
```
