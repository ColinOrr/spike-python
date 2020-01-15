# spike-python

## Running locally

```bash
$ make run
...
Attaching to spike-python_service_1
service_1  | hello world
spike-python_service_1 exited with code 0
```

## Debugging

Add a breakpoint:

```python
# greeting.py
def greeting(name):
    message = f'hello {name}'
    import pdb; pdb.set_trace() # add a breakpoint
    print(message)
```

Run the debugger:

```bash
$ make shell
$ python -m pdb greeting.py --name=colin
> /code/greeting.py(1)<module>()
-> import click
(Pdb) continue
> /code/greeting.py(8)greeting()
-> print(message)
(Pdb) message
'hello colin'
(Pdb) exit
```

See: https://docs.python.org/3/library/pdb.html
