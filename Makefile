all: rendercv_output/Mathieu_Lemay_CV.pdf
	cp rendercv_output/Mathieu_Lemay_CV.md README.md
	cp rendercv_output/Mathieu_Lemay_CV.pdf mathieu-lemay-cv.pdf

rendercv_output/Mathieu_Lemay_CV.pdf: Mathieu_Lemay_CV.yaml
	poetry run rendercv render Mathieu_Lemay_CV.yaml

install:
	poetry install
