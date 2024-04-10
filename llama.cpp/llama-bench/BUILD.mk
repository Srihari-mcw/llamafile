#-*-mode:makefile-gmake;indent-tabs-mode:t;tab-width:8;coding:utf-8-*-┐
#── vi: set noet ft=make ts=8 sw=8 fenc=utf-8 :vi ────────────────────┘

PKGS += LLAMA_CPP_BENCH

LLAMA_CPP_BENCH_FILES := $(wildcard llama.cpp/llama-bench/*)
LLAMA_CPP_BENCH_HDRS = $(filter %.h,$(LLAMA_CPP_BENCH_FILES))
LLAMA_CPP_BENCH_SRCS = $(filter %.cpp,$(LLAMA_CPP_BENCH_FILES))
LLAMA_CPP_BENCH_OBJS = $(LLAMA_CPP__BENCH_SRCS:%.cpp=o/$(MODE)/%.o)

o/$(MODE)/llama.cpp/llama-bench/llama-bench:					\
		o/$(MODE)/llama.cpp/llama-bench/llama-bench.o			\
		o/$(MODE)/llama.cpp/llama.cpp.a

.PHONY: o/$(MODE)/llama.cpp/llama-bench
o/$(MODE)/llama.cpp/llama-bench:						\
		o/$(MODE)/llama.cpp/llama-bench/llama-bench
