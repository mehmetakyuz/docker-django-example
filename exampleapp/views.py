import os

from django.views.generic import TemplateView


class EnvironmentView(TemplateView):
    template_name = 'environment.html'

    def get_context_data(self, *args, **kwargs):
        context = super(EnvironmentView, self).get_context_data(
            *args, **kwargs)

        context['environ'] = os.environ

        return context
