from channels.routing import route
from hello_world.consumers import ws_message

channel_routing = [
    route("websocket.receive", ws_message),
]