#pragma clang diagnostic ignored "-Wmissing-prototypes"

#include <metal_stdlib>
#include <simd/simd.h>

using namespace metal;

template<typename T>
[[clang::optnone]] T spvFSub(T l, T r)
{
    return fma(T(-1), r, l);
}

constant uint _19_tmp [[function_constant(0)]];
constant uint _19 = is_function_constant_defined(_19_tmp) ? _19_tmp : 1u;
constant uint _20_tmp [[function_constant(1)]];
constant uint _20 = is_function_constant_defined(_20_tmp) ? _20_tmp : 1u;
constant uint _21_tmp [[function_constant(2)]];
constant uint _21 = is_function_constant_defined(_21_tmp) ? _21_tmp : 1u;
constant uint3 gl_WorkGroupSize [[maybe_unused]] = uint3(_19, _20, _21);

struct _25
{
    uint _m0;
    uint _m1;
    uint _m2;
    uint _m3;
    uint _m4;
    uint _m5;
    uint _m6;
    uint _m7;
    uint _m8;
    uint _m9;
    uint _m10;
    uint _m11;
    uint _m12;
    uint _m13;
    uint _m14;
    uint _m15;
    uint _m16;
    uint _m17;
    uint _m18;
    uint _m19;
};

struct _26
{
    uint3 _m0;
    uint3 _m1;
    uint3 _m2;
    _25 _m3;
};

struct _39
{
    uchar _m0[1];
};

struct _49
{
    float _m0;
    float _m1;
    float _m2;
};

struct _51
{
    _49 _m0[1];
};

constant float4 _133 = {};
constant float2 _250 = {};
constant uint4 _3397 = {};
constant uint2 _10721 = {};
constant uint _10723 = {};

kernel void InterpolateFlowKernel(constant _26& _28 [[buffer(0)]], texture2d<float> _33 [[texture(0)]], texture2d<float, access::write> _36 [[texture(1)]], sampler _3 [[sampler(0)]], uint3 gl_GlobalInvocationID [[thread_position_in_grid]])
{
    uint3 _24 = gl_WorkGroupSize;
    uint2 _80 = uint2(_28._m1.x + gl_GlobalInvocationID.x, _28._m1.y + gl_GlobalInvocationID.y);
    uint2 _84 = uint2(int2(_80) / int2(uint2(8u)));
    uint2 _86 = _80 - (_84 * uint2(8u));
    uint2 _89 = (_84 << uint2(3u)) + _86;
    uint _99 = _84.x + ((int(_86.x) < int(5u)) ? 4294967295u : 0u);
    uint _100 = _99 + 1u;
    uint _103 = _84.y + ((int(_86.y) < int(5u)) ? 4294967295u : 0u);
    uint _104 = _103 + 1u;
    float4 _129 = _33.sample(_3, float2(int2(_84)), level(0.0));
    float4 _132 = _33.sample(_3, float2(int2(uint2(_99, _103))), level(0.0));
    float4 _137 = _33.sample(_3, float2(int2(uint2(_100, _103))), level(0.0));
    float4 _140 = _33.sample(_3, float2(int2(uint2(_99, _104))), level(0.0));
    float4 _144 = _33.sample(_3, float2(int2(uint2(_100, _104))), level(0.0));
    float _146 = as_type<float>(_28._m3._m0) * 8.0;
    float _148 = _129.x;
    float _153 = as_type<float>(as_type<uint>(spvFSub(_132.x, _148)) & 2147483647u);
    bool _154 = (isunordered(_153, _146) || _153 < _146);
    bool _168;
    if (_154)
    {
        _168 = as_type<float>(as_type<uint>(spvFSub(_132.y, _129.y)) & 2147483647u) >= _146;
    }
    else
    {
        _168 = !_154;
    }
    bool _174;
    if (_168)
    {
        _174 = true;
    }
    else
    {
        _174 = false;
    }
    float _179 = as_type<float>(as_type<uint>(spvFSub(_137.x, _148)) & 2147483647u);
    bool _180 = (isunordered(_179, _146) || _179 < _146);
    bool _194;
    if (_180)
    {
        _194 = as_type<float>(as_type<uint>(spvFSub(_137.y, _129.y)) & 2147483647u) >= _146;
    }
    else
    {
        _194 = !_180;
    }
    bool _200;
    if (_194)
    {
        _200 = true;
    }
    else
    {
        _200 = _174;
    }
    float _205 = as_type<float>(as_type<uint>(spvFSub(_140.x, _148)) & 2147483647u);
    bool _206 = (isunordered(_205, _146) || _205 < _146);
    bool _220;
    if (_206)
    {
        _220 = as_type<float>(as_type<uint>(spvFSub(_140.y, _129.y)) & 2147483647u) >= _146;
    }
    else
    {
        _220 = !_206;
    }
    bool _226;
    if (_220)
    {
        _226 = true;
    }
    else
    {
        _226 = _200;
    }
    float _231 = as_type<float>(as_type<uint>(spvFSub(_144.x, _148)) & 2147483647u);
    float4 _269;
    if ((isunordered(_231, _146) || _231 < _146))
    {
        float4 _266;
        if (!(_226 || (as_type<float>(as_type<uint>(spvFSub(_144.y, _129.y)) & 2147483647u) >= _146)))
        {
            float2 _251;
            _251.x = spvFSub(float(int(_89.x)) * 0.125, float(int(_99)) + 0.5);
            float2 _254 = fma(spvFSub(_137, _132).xy, _251.xx, _132.xy);
            float2 _259;
            _259.x = spvFSub(float(int(_89.y)) * 0.125, float(int(_103)) + 0.5);
            float2 _261 = fma(spvFSub(fma(spvFSub(_144, _140).xy, _251.xx, _140.xy), _254), _259.xx, _254);
            float4 _262 = float4(_261.x, _261.y, 0.0, 0.0);
            _266 = float4(_262.x, _262.y, _129.z, _129.w);
        }
        else
        {
            _266 = _129;
        }
        _269 = _266;
    }
    else
    {
        _269 = _129;
    }
    _36.write(_269, uint2(_80));
}
