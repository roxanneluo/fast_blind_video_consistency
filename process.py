if __name__ == "__main__":
    import os, sys, argparse, glob, re, math, pickle, cv2, time
    import numpy as np
    parser = argparse.ArgumentParser(description='Fast Blind Video Temporal Consistency')

    ### dataset options
    parser.add_argument('-in_dir',         type=str,     required=True,            help='dataset to test')
    parser.add_argument('-out_dir',        type=str,     required=True,           help='path to data folder')

    args = parser.parse_args()

    im_names = os.listdir(args.in_dir)
    os.makedirs(args.out_dir, exist_ok=True)
    for name in im_names:
        print(os.path.join(args.in_dir, name))
        im = cv2.imread(os.path.join(args.in_dir, name))
        _, W = im.shape[:2]
        im_out = im[:, W//2:, :]
        cv2.imwrite(os.path.join(args.out_dir, name), im_out)
