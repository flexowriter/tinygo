// +build !byollvm

package loader

/*
#cgo linux  CFLAGS: -I/usr/lib/llvm-7/include
#cgo darwin CFLAGS: -I/usr/local/Cellar/llvm/7.0.1/include
#cgo linux  LDFLAGS: -L/usr/lib/llvm-7/lib -lclang
#cgo darwin LDFLAGS: -L/usr/local/Cellar/llvm/7.0.1/lib -lclang
*/
import "C"
