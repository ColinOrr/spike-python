import click

@click.command()
@click.option("--name", default="world")
def greeting(name):
    message = f'hello {name}'
    print(message)

if __name__ == '__main__':
    greeting()
