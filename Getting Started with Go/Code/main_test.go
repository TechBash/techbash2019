package main

import "testing"

func Test_addNums(t *testing.T) {
	type args struct {
		a int
		b int
	}
	tests := []struct {
		name string
		args args
		want int
	}{
		{name:"1+22", args:args{a:1, b:23}, want:24},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := addNums(tt.args.a, tt.args.b); got != tt.want {
				t.Errorf("addNums() = %v, want %v", got, tt.want)
			}
		})
	}
}