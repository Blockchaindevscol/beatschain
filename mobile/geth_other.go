// Copyright 2016 The go-Beats Authors
// This file is part of the go-Beats library.
//
// The go-Beats library is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// The go-Beats library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
// GNU Lesser General Public License for more details.
//
// You should have received a copy of the GNU Lesser General Public License
// along with the go-Beats library. If not, see <http://www.gnu.org/licenses/>.

//go:build !android && !ios
// +build !android,!ios

package gbeats

// clientIdentifier is a hard coded identifier to report into the network.
var clientIdentifier = "GethMobile"
