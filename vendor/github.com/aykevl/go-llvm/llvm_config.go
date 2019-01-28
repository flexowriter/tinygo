// +build !byollvm

package llvm

/*
#cgo CXXFLAGS: -std=c++11
#cgo pkg-config: llvm
#cgo LDFLAGS: -lclang
*/
import "C"

type (run_build_sh int)
