import pkgutil
from rocker.extensions import RockerExtension


class Fish(RockerExtension):
    name = "fish"

    @classmethod
    def get_name(cls):
        return cls.name

    def precondition_environment(self, cli_args):
        pass

    def validate_environment(self, cli_args):
        pass

    def get_preamble(self, cli_args):
        return ""

    def get_snippet(self, cli_args):
        return pkgutil.get_data("rocker_fish", "templates/fish.Dockerfile").decode("utf-8")

    def get_docker_args(self, cli_args):
        return ""

    @staticmethod
    def register_arguments(parser):
        parser.add_argument("--fish", action="store_true", help="install fish")
