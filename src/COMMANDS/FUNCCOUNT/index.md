# syntax

```
funccount [options] eventname
```
where `eventname` is:
- `name` or `p:name:` - instrument the kernel function called `name()`

### 

# one liners

# quick examples
- is the `tcp_drop()` kernel function ever called? the below will trace invocation of `tcp_drop()` kernel function
    ```
    funccount tcp_drop
    ```

- what is the most frequent kernel VFS functions?
    ```
    funccount 'vfs_*'
    ```
- what is the rate of the user-level `pthread_mutex_lock()` function per second?
    ```
    funccount -i 1 c:pthread_mutex_lock
    ```

- what is the most frequent string function call from libc,system-wide?
    ```
    funccount 'c:str*'
    ```

- what is the most frequent syscall?
    ```
    funccount 't:syscalls:sys_enter_*'
    ```
