lint:
    ruff format --check
    ruff check
    mypy --check .

clean:
    rm -rf test-dir

test: clean
    mkdir test-dir && \
    cd test-dir && \
    cmake ../test && \
    make && \
    ctest -V
