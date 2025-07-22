import subprocess
import os

def convert_to_hls(input_path: str, output_dir: str):
    os.makedirs(output_dir, exist_ok=True)
    command = [
        "ffmpeg",
        "-i", input_path,
        "-codec: copy",
        "-start_number", "0",
        "-hls_time", "10",
        "-hls_list_size", "0",
        "-f", "hls",
        f"{output_dir}/index.m3u8"
    ]
    subprocess.run(" ".join(command), shell=True)
