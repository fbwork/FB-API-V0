from rest_framework.views import APIView
from rest_framework.response import Response


class EP1(APIView):

    def get(self, request):
        return Response({'r1': 'response data 1', 'r2': 'response data 1'}, 200)
