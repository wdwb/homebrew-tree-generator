    # Formula/tg.rb
    class Tg < Formula
        desc "CLI tool to generate folder/file structures from templates"
        homepage "https://github.com/wdwb/tree-generator" 
        url "https://github.com/wdwb/tree-generator/archive/refs/tags/v0.0.1.tar.gz"
        sha256 "64475869f220a79545abaf454cd77889193d4ae9d29c0e07c922d59e681bed4c" 
        license "MIT"
        version "0.0.1" # 릴리스 버전과 일치
  
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