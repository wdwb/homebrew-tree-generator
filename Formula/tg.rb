    # Formula/tg.rb
    class Tg < Formula
        desc "CLI tool to generate folder/file structures from templates"
        homepage "https://github.com/wdwb/tree-generator" 
        url "https://github.com/wdwb/tree-generator/archive/refs/tags/v0.0.2.tar.gz"
        sha256 "09f4f15c65d346ac40698d108be19366de96f9e0bdf01f4c7e4882e2c5609ebe" 
        license "MIT"
        version "0.0.2" # 릴리스 버전과 일치
  
        depends_on "go" => :build
  
        def install
          # main.go 파일이 있는 cmd/tg 디렉토리 경로를 지정합니다.
          system "go", "build", "-o", bin/"tg", "./cmd/tg"
        end
  
        test do
          # 간단한 테스트: list 명령어가 에러 없이 실행되는지 확인
          # 또는 버전 출력 기능이 있다면 `system "#{bin}/tg --version"` 사용 가능
          system "#{bin}/tg", "list"
        end
      end