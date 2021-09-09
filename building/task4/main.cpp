#include <opencv2/core.hpp>
#include <opencv2/imgcodecs.hpp>
#include <iostream>


char image[][] = {
        {0, 1, 2, 3},
        {0, 1, 2, 3},
        {0, 1, 2, 3}
}


int main()
{
    std::string image_path = "../map.png";
    cv::Mat img = imread("../map.png", cv::IMREAD_COLOR);

    if(img.empty())
    {
        std::cout << "Could not read the image: " << image_path << std::endl;
        return 1;
    }

    cv::Mat result(1, img.cols, CV_8UC3, cv::Scalar(0, 0, 0));

    for (int j = 0; j < img.cols; ++j) {
        result.at<cv::Vec3b>(0, j)[0] = img.at<cv::Vec3b>(2, j)[2];
        result.at<cv::Vec3b>(0, j)[1] = img.at<cv::Vec3b>(1, j)[1];
        auto ttt = img.at<cv::Vec3b>(1, j);
//        result.at<cv::Vec3b>(0, j)[2] = img.at<cv::Vec3b>(0, j)[0];
//        for (int i = 0; i < img.rows; ++i) {
//            result.at<cv::Vec3b>(0, j)[0] = img.at<cv::Vec3b>(2, j)[2];
//            result.at<cv::Vec3b>(0, j)[1] = img.at<cv::Vec3b>(1, j)[1];
//            result.at<cv::Vec3b>(0, j)[2] = img.at<cv::Vec3b>(0, j)[0];
////            result.at<cv::Vec3b>(0, j)[i] = img.at<cv::Vec3b>(i, j)[i];
//        }
    }

    imwrite("starry_night.png", result);
    return 0;
}