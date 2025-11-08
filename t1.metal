#pragma clang diagnostic ignored "-Wmissing-prototypes"
#pragma clang diagnostic ignored "-Wmissing-braces"

#include <metal_stdlib>
#include <simd/simd.h>

using namespace metal;

template<typename T, size_t Num>
struct spvUnsafeArray
{
    T elements[Num ? Num : 1];

    thread T& operator [] (size_t pos) thread
    {
        return elements[pos];
    }
    constexpr const thread T& operator [] (size_t pos) const thread
    {
        return elements[pos];
    }

    device T& operator [] (size_t pos) device
    {
        return elements[pos];
    }
    constexpr const device T& operator [] (size_t pos) const device
    {
        return elements[pos];
    }

    constexpr const constant T& operator [] (size_t pos) const constant
    {
        return elements[pos];
    }

    threadgroup T& operator [] (size_t pos) threadgroup
    {
        return elements[pos];
    }
    constexpr const threadgroup T& operator [] (size_t pos) const threadgroup
    {
        return elements[pos];
    }
};

constant uint _20_tmp [[function_constant(0)]];
constant uint _20 = is_function_constant_defined(_20_tmp) ? _20_tmp : 1u;
constant uint _21_tmp [[function_constant(1)]];
constant uint _21 = is_function_constant_defined(_21_tmp) ? _21_tmp : 1u;
constant uint _22_tmp [[function_constant(2)]];
constant uint _22 = is_function_constant_defined(_22_tmp) ? _22_tmp : 1u;
constant uint3 gl_WorkGroupSize [[maybe_unused]] = uint3(_20, _21, _22);

struct _26
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

struct _27
{
    uint3 _m0;
    uint3 _m1;
    uint3 _m2;
    _26 _m3;
};

struct _35
{
    float _m0[129];
    float _m1[129];
    float _m2[129];
    float _m3[129];
    float _m4[65];
    float _m5[65];
};

struct _43
{
    uchar _m0[1];
};

constant uint _187 = {};
constant float4 _330 = {};
constant float3 _424 = {};
constant float _433 = {};
constant uint2 _597 = {};
constant uint4 _980 = {};

kernel void GuideRaw10AndUnblockerAccum(constant _27& _29 [[buffer(0)]], const device _43& _45 [[buffer(1)]], texture2d<float, access::write> _48 [[texture(0)]], texture2d_array<uint, access::write> _51 [[texture(1)]], uint3 gl_LocalInvocationID [[thread_position_in_threadgroup]], uint3 gl_WorkGroupID [[threadgroup_position_in_grid]])
{
    threadgroup spvUnsafeArray<uint4, 16> _14;
    uint3 _25 = gl_WorkGroupSize;
    float4 _90 = as_type<float4>(uint4(_29._m3._m4, _29._m3._m5, _29._m3._m6, _29._m3._m7));
    float4 _104 = as_type<float4>(uint4(_29._m3._m8, _29._m3._m9, _29._m3._m10, _29._m3._m11));
    uint _129 = _29._m2.y + gl_WorkGroupID.y;
    uint _134 = uint(int(gl_LocalInvocationID.x) / int(8u));
    uint _136 = uint(int(_129) / int(4u));
    uint2 _137 = uint2((_29._m2.x + gl_WorkGroupID.x) + _134, _136);
    uint _141 = _129 - (_136 * 4u);
    uint2 _148 = (_137 << uint2(3u)) + uint2(gl_LocalInvocationID.x - (_134 * 8u), (_141 << 1u) + gl_LocalInvocationID.y);
    uint _149 = _148.x;
    uint _151 = _29._m3._m2 + 4294967294u;
    uint _155 = (int(_149) < int(1u)) ? (2u - _149) : _149;
    uint _160 = _148.y;
    uint _161 = _29._m3._m3 + 4294967294u;
    uint _164 = (int(_160) < int(1u)) ? (2u - _160) : _160;
    uint2 _169 = uint2((int(_155) > int(_151)) ? ((_151 << 1u) - _155) : _155, (int(_164) > int(_161)) ? ((_161 << 1u) - _164) : _164);
    uint _170 = _29._m3._m1 << 1u;
    float3 _173;
    float _174;
    float4 _175;
    float _176;
    float4 _177;
    float _178;
    uint2 _179;
    float _180;
    uint _181;
    _173 = float3(0.0);
    _174 = 0.0;
    _175 = float4(0.0);
    _176 = 0.0;
    _177 = float4(0.0);
    _178 = 0.0;
    _179 = uint2(0u);
    _180 = 0.0;
    _181 = 4294967295u;
    uint2 _368;
    float _401;
    float3 _411;
    float4 _412;
    float _413;
    float4 _415;
    float _418;
    for (;;)
    {
        bool _182 = _181 == 0u;
        float _185 = _182 ? 0.5 : 0.25;
        uint2 _189 = uint2(4294967295u, 0u);
        _189.y = _181;
        uint2 _190 = _189 + _169;
        uint _196 = (_29._m3._m0 + (_190.x * 3u)) + (_170 * _190.y);
        uint _203 = _196 + 2u;
        uint _212 = _196 + 5u;
        uint _221 = _196 + 8u;
        uint _258 = _196 + _29._m3._m1;
        uint _264 = _258 + 2u;
        uint _273 = _258 + 5u;
        uint _282 = _258 + 8u;
        float4 _331;
        _331.x = _185;
        float4 _335 = float4(float(ushort(ushort(ushort(_45._m0[_196]) << ushort(4)) | ushort(uchar(_45._m0[_203] & uchar(15))))), float(ushort(ushort(ushort(_45._m0[_196 + 1u]) << ushort(4)) | ushort(uchar(_45._m0[_203] >> uchar(4))))), float(ushort(ushort(ushort(_45._m0[_258]) << ushort(4)) | ushort(uchar(_45._m0[_264] & uchar(15))))), float(ushort(ushort(ushort(_45._m0[_258 + 1u]) << ushort(4)) | ushort(uchar(_45._m0[_264] >> uchar(4)))))) + float4(9.9999997473787516355514526367188e-05);
        float4 _344 = fma(_335.zxwy, _104, _90);
        float _345 = _344.y;
        float _346 = _344.z;
        float _347 = _345 + _346;
        float4 _349 = _344;
        _349.y = _347 * 0.5;
        float4 _350 = float4(_349.x, _349.y, _344.w, 0.0);
        float4 _358 = fma(_350, _350, _177);
        float4 _363 = float4(float(ushort(ushort(ushort(_45._m0[_196 + 3u]) << ushort(4)) | ushort(uchar(_45._m0[_212] & uchar(15))))), float(ushort(ushort(ushort(_45._m0[_196 + 4u]) << ushort(4)) | ushort(uchar(_45._m0[_212] >> uchar(4))))), float(ushort(ushort(ushort(_45._m0[_258 + 3u]) << ushort(4)) | ushort(uchar(_45._m0[_273] & uchar(15))))), float(ushort(ushort(ushort(_45._m0[_258 + 4u]) << ushort(4)) | ushort(uchar(_45._m0[_273] >> uchar(4)))))) + float4(9.9999997473787516355514526367188e-05);
        float4 _364 = _363.zxwy;
        _368 = _182 ? uint2(_364.yz) : _179;
        float4 _375 = fma(_364, _104, _90);
        float _376 = _375.y;
        float _377 = _375.z;
        float _378 = _376 + _377;
        float _379 = _378 * 0.5;
        float4 _380 = _375;
        _380.y = _379;
        float4 _381 = float4(_380.x, _380.y, _375.w, 0.0);
        float4 _389 = fma(_381, _381, float4(_358.x, _358.y, _358.z, 0.0));
        float4 _394 = float4(float(ushort(ushort(ushort(_45._m0[_196 + 6u]) << ushort(4)) | ushort(uchar(_45._m0[_221] & uchar(15))))), float(ushort(ushort(ushort(_45._m0[_196 + 7u]) << ushort(4)) | ushort(uchar(_45._m0[_221] >> uchar(4))))), float(ushort(ushort(ushort(_45._m0[_258 + 6u]) << ushort(4)) | ushort(uchar(_45._m0[_282] & uchar(15))))), float(ushort(ushort(ushort(_45._m0[_258 + 7u]) << ushort(4)) | ushort(uchar(_45._m0[_282] >> uchar(4)))))) + float4(9.9999997473787516355514526367188e-05);
        _401 = fma(_185 * ((_394.x + _394.w) * 0.5), 0.25, fma(_185 * ((_363.x + _363.w) * 0.5), 0.5, fma(_185 * ((_335.x + _335.w) * 0.5), 0.25, _180)));
        float4 _402 = fma(_394.zxwy, _104, _90);
        float _403 = _402.y;
        float _404 = _402.z;
        float _405 = _403 + _404;
        float4 _407 = _402;
        _407.y = _405 * 0.5;
        float4 _408 = float4(_407.x, _407.y, _402.w, 0.0);
        _411 = fma((float4(_331.x, _331.x, _331.x, 0.0) * _408).xyz, float3(0.25), fma((float4(_331.x, _331.x, _331.x, 0.0) * _381).xyz, float3(0.5), fma((float4(_331.x, _331.x, _331.x, 0.0) * _350).xyz, float3(0.25), _173)));
        _412 = ((_175 + _350) + _381) + _408;
        _413 = ((_176 + _347) + _378) + _405;
        float4 _414 = fma(_408, _408, float4(_389.x, _389.y, _389.z, 0.0));
        _415 = float4(_414.x, _414.y, _414.z, 0.0);
        _418 = ((_178 + fma(_345, _345, _346 * _346)) + fma(_376, _376, _377 * _377)) + fma(_403, _403, _404 * _404);
        if (int(_181) >= int(1u))
        {
            break;
        }
        else
        {
            _173 = _411;
            _174 = _182 ? _379 : _174;
            _175 = _412;
            _176 = _413;
            _177 = _415;
            _178 = _418;
            _179 = _368;
            _180 = _401;
            _181++;
        }
    }
    float4 _425 = float4(_411.x, _411.y, _411.z, 0.0);
    float _429 = as_type<float>(_29._m3._m16);
    float4 _432 = _412 / float4(9.0);
    float4 _437 = fma(-_432, _432, _415 / float4(9.0, 9.0, 9.0, 0.0));
    float4 _440 = fast::max(float4(0.0), float4(_437.x, _437.y, _437.z, 0.0));
    float _442 = _413 / 18.0;
    float _447 = fast::max(0.0, fma(-_442, _442, _418 / 18.0));
    float _449 = dot(_411, float3(0.25, 0.5, 0.25));
    float _471;
    bool _472;
    if (!((_447 > ((fma(_449 * _449, as_type<float>(_29._m3._m14), fma(_449, as_type<float>(_29._m3._m13), as_type<float>(_29._m3._m12))) * 2.0) * 3.0)) ? (_29._m3._m15 == 0u) : false))
    {
        _471 = dot(_440.xyz, float3(0.3333333432674407958984375));
        _472 = false;
    }
    else
    {
        _471 = _433;
        _472 = true;
    }
    float _483;
    float4 _484;
    if (_472)
    {
        float4 _476 = _425;
        _476.y = _174;
        _483 = -fast::max(_440.y, _447);
        _484 = float4(_476.x, _476.y, _425.z, 0.0);
    }
    else
    {
        _483 = _471;
        _484 = _425;
    }
    float4 _488 = (isunordered(_174, _429) || _174 < _429) ? _484 : float4(10000.0, 10000.0, 10000.0, 0.0);
    if (int(_149) < int(uint2(_48.get_width(), _48.get_height()).x))
    {
        if (int(_160) < int(uint2(_48.get_width(), _48.get_height()).y))
        {
            _488.w = _483 * 1024.0;
            _48.write(_488, uint2(_148));
        }
    }
    uint _509 = (gl_LocalInvocationID.x << 1u) + gl_LocalInvocationID.y;
    uint _510 = uint(_401);
    bool _513 = int(_149) < int(uint2(_48.get_width(), _48.get_height()).x);
    bool _523;
    bool _524;
    if (_513)
    {
        _523 = true;
        _524 = int(_160) >= int(uint2(_48.get_width(), _48.get_height()).y);
    }
    else
    {
        _523 = false;
        _524 = !_513;
    }
    bool _533;
    if (_524)
    {
        _14[_509] = uint4(0u);
        _533 = false;
    }
    else
    {
        _533 = _523;
    }
    if (_533)
    {
        _14[_509] = uint4(_368.x + _368.y, (_368.x * _368.x) + (_368.y * _368.y), _510, _510 * _510);
    }
    threadgroup_barrier(mem_flags::mem_threadgroup);
    uint _550 = uint(min(int(64u), int(16u)));
    if (int(_550) > int(1u))
    {
        uint _557 = uint(abs(int(_509))) % uint(abs(int(64u)));
        uint _561 = (int(_509) > int(0u)) ? _557 : ((_557 ^ 4294967295u) + 1u);
        uint _565 = _550;
        uint _566;
        bool _567;
        for (;;)
        {
            _566 = _565 >> 1u;
            _567 = int(_561) < int(_566);
            if (_567)
            {
                _14[_509] += _14[_509 + _566];
            }
            threadgroup_barrier(mem_flags::mem_threadgroup);
            if (_565 < 4u)
            {
                break;
            }
            else
            {
                _565 = _566;
                continue;
            }
        }
    }
    if (((gl_LocalInvocationID.x & 7u) == 0u) ? (gl_LocalInvocationID.y == 0u) : false)
    {
        uint4 _598 = uint4(_137.x, _137.y, 0u, 0u);
        _598.w = 0u;
        _598.z = _141;
        _51.write(_14[_509], uint2(_598.xy), uint(_598.z));
    }
}
