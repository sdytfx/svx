//======================================================================
//
//               .oooooo..o oooooo     oooo ooooooo  ooooo     
//              d8P'    `Y8  `888.     .8'   `8888    d8'      
//              Y88bo.        `888.   .8'      Y888..8P        
//               `"Y8888o.     `888. .8'        `8888'         
//                   `"Y88b     `888.8'        .8PY888.        
//              oo     .d8P      `888'        d8'  `888b       
//              8""88888P'        `8'       o888o  o88888o
//
//                  SystemVerilog Extension Library
//
//
// Copyright 2016 NVIDIA Corporation
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
// implied.  See the License for the specific language governing
// permissions and limitations under the License.
//======================================================================

//----------------------------------------------------------------------
// class: container
//
// A container has a size. 
//----------------------------------------------------------------------
virtual class container extends void_t;

  pure virtual function size_t size();
  pure virtual function void clear();

endclass

//----------------------------------------------------------------------
// class: typed_container
//
// A typed container specifies the type of the thing that is contained
// in the container.  A traits class specifies various type-specific
// utilities .
//----------------------------------------------------------------------
virtual class typed_container #(type T=int, type P=void_traits)
  extends container;

  protected T m_empty;

  function new();
    assert($cast(m_empty, P::empty));
  endfunction

  virtual function size_t size();
    return 0;
  endfunction

  function void clear();
  endfunction    

endclass
