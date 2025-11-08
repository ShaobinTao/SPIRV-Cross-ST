#include <metal_stdlib>
#include <simd/simd.h>

using namespace metal;

constant uint _5_tmp [[function_constant(0)]];
constant uint _5 = is_function_constant_defined(_5_tmp) ? _5_tmp : 1u;
constant uint _6_tmp [[function_constant(1)]];
constant uint _6 = is_function_constant_defined(_6_tmp) ? _6_tmp : 1u;
constant uint _7_tmp [[function_constant(2)]];
constant uint _7 = is_function_constant_defined(_7_tmp) ? _7_tmp : 1u;
constant uint3 gl_WorkGroupSize [[maybe_unused]] = uint3(_5, _6, _7);

struct _11
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

struct _12
{
    uint3 _m0;
    uint3 _m1;
    _11 _m2;
};

struct _17
{
    uchar _m0[1];
};

constant uint _132 = {};
constant float4 _275 = {};
constant float3 _344 = {};
constant float _352 = {};

kernel void GuideRaw10(constant _12& _14 [[buffer(0)]], const device _17& _19 [[buffer(1)]], texture2d<float, access::write> _23 [[texture(0)]], uint3 gl_GlobalInvocationID [[thread_position_in_grid]])
{
    uint3 _10 = gl_WorkGroupSize;
    float4 _56 = as_type<float4>(uint4(_14._m2._m4, _14._m2._m5, _14._m2._m6, _14._m2._m7));
    float4 _70 = as_type<float4>(uint4(_14._m2._m8, _14._m2._m9, _14._m2._m10, _14._m2._m11));
    uint _91 = _14._m1.x + gl_GlobalInvocationID.x;
    uint _96 = _14._m1.y + gl_GlobalInvocationID.y;
    uint _98 = _14._m2._m2 + 4294967294u;
    uint _102 = (int(_91) < int(1u)) ? (2u - _91) : _91;
    uint _107 = _14._m2._m3 + 4294967294u;
    uint _110 = (int(_96) < int(1u)) ? (2u - _96) : _96;
    uint2 _115 = uint2((int(_102) > int(_98)) ? ((_98 << 1u) - _102) : _102, (int(_110) > int(_107)) ? ((_107 << 1u) - _110) : _110);
    uint _116 = _14._m2._m1 << 1u;
    float3 _119;
    float _120;
    float4 _121;
    float _122;
    float4 _123;
    float _124;
    uint _125;
    _119 = float3(0.0);
    _120 = 0.0;
    _121 = float4(0.0);
    _122 = 0.0;
    _123 = float4(0.0);
    _124 = 0.0;
    _125 = 4294967295u;
    float3 _331;
    float4 _332;
    float _333;
    float4 _335;
    float _338;
    for (;;)
    {
        bool _126 = _125 == 0u;
        uint2 _134 = uint2(4294967295u, 0u);
        _134.y = _125;
        uint2 _135 = _134 + _115;
        uint _141 = (_14._m2._m0 + (_135.x * 3u)) + (_116 * _135.y);
        uint _148 = _141 + 2u;
        uint _157 = _141 + 5u;
        uint _166 = _141 + 8u;
        uint _203 = _141 + _14._m2._m1;
        uint _209 = _203 + 2u;
        uint _218 = _203 + 5u;
        uint _227 = _203 + 8u;
        float4 _276;
        _276.x = _126 ? 0.5 : 0.25;
        float4 _282 = fma(float4(float(ushort(ushort(ushort(_19._m0[_203]) << ushort(4)) | ushort(uchar(_19._m0[_209] & uchar(15))))), float(ushort(ushort(ushort(_19._m0[_141]) << ushort(4)) | ushort(uchar(_19._m0[_148] & uchar(15))))), float(ushort(ushort(ushort(_19._m0[_203 + 1u]) << ushort(4)) | ushort(uchar(_19._m0[_209] >> uchar(4))))), float(ushort(ushort(ushort(_19._m0[_141 + 1u]) << ushort(4)) | ushort(uchar(_19._m0[_148] >> uchar(4)))))) + float4(9.9999997473787516355514526367188e-05), _70, _56);
        float _283 = _282.y;
        float _284 = _282.z;
        float _285 = _283 + _284;
        float4 _287 = _282;
        _287.y = _285 * 0.5;
        float4 _288 = float4(_287.x, _287.y, _282.w, 0.0);
        float4 _296 = fma(_288, _288, _123);
        float4 _302 = fma(float4(float(ushort(ushort(ushort(_19._m0[_203 + 3u]) << ushort(4)) | ushort(uchar(_19._m0[_218] & uchar(15))))), float(ushort(ushort(ushort(_19._m0[_141 + 3u]) << ushort(4)) | ushort(uchar(_19._m0[_157] & uchar(15))))), float(ushort(ushort(ushort(_19._m0[_203 + 4u]) << ushort(4)) | ushort(uchar(_19._m0[_218] >> uchar(4))))), float(ushort(ushort(ushort(_19._m0[_141 + 4u]) << ushort(4)) | ushort(uchar(_19._m0[_157] >> uchar(4)))))) + float4(9.9999997473787516355514526367188e-05), _70, _56);
        float _303 = _302.y;
        float _304 = _302.z;
        float _305 = _303 + _304;
        float _306 = _305 * 0.5;
        float4 _307 = _302;
        _307.y = _306;
        float4 _308 = float4(_307.x, _307.y, _302.w, 0.0);
        float4 _316 = fma(_308, _308, float4(_296.x, _296.y, _296.z, 0.0));
        float4 _322 = fma(float4(float(ushort(ushort(ushort(_19._m0[_203 + 6u]) << ushort(4)) | ushort(uchar(_19._m0[_227] & uchar(15))))), float(ushort(ushort(ushort(_19._m0[_141 + 6u]) << ushort(4)) | ushort(uchar(_19._m0[_166] & uchar(15))))), float(ushort(ushort(ushort(_19._m0[_203 + 7u]) << ushort(4)) | ushort(uchar(_19._m0[_227] >> uchar(4))))), float(ushort(ushort(ushort(_19._m0[_141 + 7u]) << ushort(4)) | ushort(uchar(_19._m0[_166] >> uchar(4)))))) + float4(9.9999997473787516355514526367188e-05), _70, _56);
        float _323 = _322.y;
        float _324 = _322.z;
        float _325 = _323 + _324;
        float4 _327 = _322;
        _327.y = _325 * 0.5;
        float4 _328 = float4(_327.x, _327.y, _322.w, 0.0);
        _331 = fma((float4(_276.x, _276.x, _276.x, 0.0) * _328).xyz, float3(0.25), fma((float4(_276.x, _276.x, _276.x, 0.0) * _308).xyz, float3(0.5), fma((float4(_276.x, _276.x, _276.x, 0.0) * _288).xyz, float3(0.25), _119)));
        _332 = ((_121 + _288) + _308) + _328;
        _333 = ((_122 + _285) + _305) + _325;
        float4 _334 = fma(_328, _328, float4(_316.x, _316.y, _316.z, 0.0));
        _335 = float4(_334.x, _334.y, _334.z, 0.0);
        _338 = ((_124 + fma(_283, _283, _284 * _284)) + fma(_303, _303, _304 * _304)) + fma(_323, _323, _324 * _324);
        if (int(_125) >= int(1u))
        {
            break;
        }
        else
        {
            _119 = _331;
            _120 = _126 ? _306 : _120;
            _121 = _332;
            _122 = _333;
            _123 = _335;
            _124 = _338;
            _125++;
        }
    }
    float4 _345 = float4(_331.x, _331.y, _331.z, 0.0);
    float4 _351 = _332 / float4(9.0);
    float4 _356 = fma(-_351, _351, _335 / float4(9.0, 9.0, 9.0, 0.0));
    float4 _359 = fast::max(float4(0.0), float4(_356.x, _356.y, _356.z, 0.0));
    float _361 = _333 / 18.0;
    float _366 = fast::max(0.0, fma(-_361, _361, _338 / 18.0));
    float _368 = dot(_331, float3(0.25, 0.5, 0.25));
    float _390;
    bool _391;
    if (!((_366 > ((fma(_368 * _368, as_type<float>(_14._m2._m14), fma(_368, as_type<float>(_14._m2._m13), as_type<float>(_14._m2._m12))) * 2.0) * 3.0)) ? (_14._m2._m15 == 0u) : false))
    {
        _390 = dot(_359.xyz, float3(0.3333333432674407958984375));
        _391 = false;
    }
    else
    {
        _390 = _352;
        _391 = true;
    }
    float _402;
    float4 _403;
    if (_391)
    {
        float4 _395 = _345;
        _395.y = _120;
        _402 = -fast::max(_359.y, _366);
        _403 = float4(_395.x, _395.y, _345.z, 0.0);
    }
    else
    {
        _402 = _390;
        _403 = _345;
    }
    float _404 = as_type<float>(_14._m2._m16);
    float4 _408 = (isunordered(_120, _404) || _120 < _404) ? _403 : float4(10000.0, 10000.0, 10000.0, 0.0);
    _408.w = _402 * 1024.0;
    _23.write(_408, uint2(uint2(_91, _96)));
}
