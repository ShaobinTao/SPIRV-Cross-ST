#pragma clang diagnostic ignored "-Wmissing-prototypes"

#include <metal_stdlib>
#include <simd/simd.h>

using namespace metal;

template<typename T>
[[clang::optnone]] T spvFSub(T l, T r)
{
    return fma(T(-1), r, l);
}

constant uint _13_tmp [[function_constant(0)]];
constant uint _13 = is_function_constant_defined(_13_tmp) ? _13_tmp : 1u;
constant uint _14_tmp [[function_constant(1)]];
constant uint _14 = is_function_constant_defined(_14_tmp) ? _14_tmp : 1u;
constant uint _15_tmp [[function_constant(2)]];
constant uint _15 = is_function_constant_defined(_15_tmp) ? _15_tmp : 1u;
constant uint3 gl_WorkGroupSize [[maybe_unused]] = uint3(_13, _14, _15);

struct _19
{
    uint _m0;
    uint _m1;
    uint _m2;
    uint _m3;
    uint _m4;
    uint _m5;
};

struct _20
{
    uint3 _m0;
    uint3 _m1;
    _19 _m2;
};

struct _25
{
    uchar _m0[1];
};

constant uchar4 _89 = {};
constant float4 _387 = {};

static inline __attribute__((always_inline))
uint _41(const device uchar* const device  _42, uint _43, uint2 _44, uint2 _45, uint2 _46, uint2 _47, uint2 _48)
{
    uint _52 = _44.x << 1u;
    uint _54 = _44.y << 1u;
    uint _55 = _43 << 1u;
    uint2 _58;
    uint2 _59;
    uint2 _60;
    uint _61;
    uint _62;
    uint _63;
    _58 = _45;
    _59 = _46;
    _60 = _47;
    _61 = 0u;
    _62 = 0u;
    _63 = 0u;
    uint _339;
    uint _340;
    for (;;)
    {
        uint _67 = uint(int(_58.x) >> int(31u)) ^ _58.x;
        uint _73 = (int(_67) < int(_44.x)) ? _67 : (_52 + (_67 ^ 4294967295u));
        uint _76 = uint(int(_58.y) >> int(31u)) ^ _58.y;
        uint _85 = (uint(int(_73) >> int(1u)) * 5u) + (((int(_76) < int(_44.y)) ? _76 : (_54 + (_76 ^ 4294967295u))) * _55);
        uchar4 _90;
        _90.x = _42[_85];
        _90.y = _42[_85 + 1u];
        _90.z = _42[_85 + 2u];
        _90.w = _42[_85 + 3u];
        uchar4 _109;
        _109.x = _42[_85 + 4u];
        ushort4 _127 = (ushort4(_90) << ushort4(2)) | ushort4((_109.xxxx >> uchar4(uchar(0), uchar(2), uchar(4), uchar(6))) & uchar4(3));
        uint _128 = _85 + _43;
        uchar4 _131;
        _131.x = _42[_128];
        _131.y = _42[_128 + 1u];
        _131.z = _42[_128 + 2u];
        _131.w = _42[_128 + 3u];
        uchar4 _147;
        _147.x = _42[_128 + 4u];
        ushort4 _154 = (ushort4(_131) << ushort4(2)) | ushort4((_147.xxxx >> uchar4(uchar(0), uchar(2), uchar(4), uchar(6))) & uchar4(3));
        uint4 _161 = uint4(((_73 & 1u) == 0u) ? ushort4(_127.x, _127.y, _154.x, _154.y) : ushort4(_127.z, _127.w, _154.z, _154.w));
        uint _164 = uint(int(_59.x) >> int(31u)) ^ _59.x;
        uint _168 = (int(_164) < int(_44.x)) ? _164 : (_52 + (_164 ^ 4294967295u));
        uint _171 = uint(int(_59.y) >> int(31u)) ^ _59.y;
        uint _179 = (uint(int(_168) >> int(1u)) * 5u) + (((int(_171) < int(_44.y)) ? _171 : (_54 + (_171 ^ 4294967295u))) * _55);
        uchar4 _182;
        _182.x = _42[_179];
        _182.y = _42[_179 + 1u];
        _182.z = _42[_179 + 2u];
        _182.w = _42[_179 + 3u];
        uchar4 _198;
        _198.x = _42[_179 + 4u];
        ushort4 _205 = (ushort4(_182) << ushort4(2)) | ushort4((_198.xxxx >> uchar4(uchar(0), uchar(2), uchar(4), uchar(6))) & uchar4(3));
        uint _206 = _179 + _43;
        uchar4 _209;
        _209.x = _42[_206];
        _209.y = _42[_206 + 1u];
        _209.z = _42[_206 + 2u];
        _209.w = _42[_206 + 3u];
        uchar4 _225;
        _225.x = _42[_206 + 4u];
        ushort4 _232 = (ushort4(_209) << ushort4(2)) | ushort4((_225.xxxx >> uchar4(uchar(0), uchar(2), uchar(4), uchar(6))) & uchar4(3));
        uint4 _238 = uint4(((_168 & 1u) == 0u) ? ushort4(_205.x, _205.y, _232.x, _232.y) : ushort4(_205.z, _205.w, _232.z, _232.w));
        uint _241 = uint(int(_60.x) >> int(31u)) ^ _60.x;
        uint _245 = (int(_241) < int(_44.x)) ? _241 : (_52 + (_241 ^ 4294967295u));
        uint _248 = uint(int(_60.y) >> int(31u)) ^ _60.y;
        uint _256 = (uint(int(_245) >> int(1u)) * 5u) + (((int(_248) < int(_44.y)) ? _248 : (_54 + (_248 ^ 4294967295u))) * _55);
        uchar4 _259;
        _259.x = _42[_256];
        _259.y = _42[_256 + 1u];
        _259.z = _42[_256 + 2u];
        _259.w = _42[_256 + 3u];
        uchar4 _275;
        _275.x = _42[_256 + 4u];
        ushort4 _282 = (ushort4(_259) << ushort4(2)) | ushort4((_275.xxxx >> uchar4(uchar(0), uchar(2), uchar(4), uchar(6))) & uchar4(3));
        uint _283 = _256 + _43;
        uchar4 _286;
        _286.x = _42[_283];
        _286.y = _42[_283 + 1u];
        _286.z = _42[_283 + 2u];
        _286.w = _42[_283 + 3u];
        uchar4 _302;
        _302.x = _42[_283 + 4u];
        ushort4 _309 = (ushort4(_286) << ushort4(2)) | ushort4((_302.xxxx >> uchar4(uchar(0), uchar(2), uchar(4), uchar(6))) & uchar4(3));
        uint4 _315 = uint4(((_245 & 1u) == 0u) ? ushort4(_282.x, _282.y, _309.x, _309.y) : ushort4(_282.z, _282.w, _309.z, _309.w));
        uint _320 = ((_161.w + 1u) + _161.x) >> 1u;
        _339 = uint(abs(int((((_315.w + 1u) + _315.x) >> 1u) - _320))) + _62;
        _340 = uint(abs(int((((_238.w + 1u) + _238.x) >> 1u) - _320))) + _61;
        if (_63 >= 7u)
        {
            break;
        }
        else
        {
            _58 += _48;
            _59 += _48;
            _60 += _48;
            _61 = _340;
            _62 = _339;
            _63++;
        }
    }
    return _339 - (_340 << 1u);
}

kernel void FindBlockTiles_GatherEdges(constant _20& _22 [[buffer(0)]], const device _25& _27 [[buffer(1)]], texture2d<float> _32 [[texture(0)]], texture2d<float, access::write> _35 [[texture(1)]], sampler _3 [[sampler(0)]], uint3 gl_GlobalInvocationID [[thread_position_in_grid]])
{
    uint3 _18 = gl_WorkGroupSize;
    uint2 _363 = uint2(_22._m2._m2, _22._m2._m3);
    uint2 _376 = uint2(_22._m1.x + gl_GlobalInvocationID.x, _22._m1.y + gl_GlobalInvocationID.y);
    float2 _381 = float2(int2(_376));
    uint2 _390 = (_376 << uint2(3u)) + uint2(int2(rint(_32.sample(_3, _381, level(0.0))).xy));
    uint2 _393 = _376 + uint2(0u, 4294967295u);
    float2 _395 = float2(int2(_393));
    uint2 _407 = _376 + uint2(4294967295u, 0u);
    float2 _409 = float2(int2(_407));
    uint2 _424 = _376 + uint2(0u, 1u);
    float2 _426 = float2(int2(_424));
    uint2 _438 = _376 + uint2(1u, 0u);
    float2 _440 = float2(int2(_438));
    float2 _456 = _32.sample(_3, float2(int2(_376 + uint2(4294967295u))), level(0.0)).xy;
    float2 _465 = _32.sample(_3, _395, level(0.0)).xy;
    float2 _473 = _32.sample(_3, float2(int2(_376 + uint2(1u, 4294967295u))), level(0.0)).xy;
    float2 _478 = _32.sample(_3, _409, level(0.0)).xy;
    float2 _483 = _32.sample(_3, _381, level(0.0)).xy;
    float2 _488 = _32.sample(_3, _440, level(0.0)).xy;
    float2 _496 = _32.sample(_3, float2(int2(_376 + uint2(4294967295u, 1u))), level(0.0)).xy;
    float2 _501 = _32.sample(_3, _426, level(0.0)).xy;
    float2 _509 = _32.sample(_3, float2(int2(_376 + uint2(1u))), level(0.0)).xy;
    float2 _510 = precise::min(precise::min(precise::min(precise::min(precise::min(precise::min(precise::min(precise::min(precise::min(float2(3.4028234663852885981170418348452e+38), _456), _465), _473), _478), _483), _488), _496), _501), _509);
    float2 _511 = precise::max(precise::max(precise::max(precise::max(precise::max(precise::max(precise::max(precise::max(precise::max(float2(-3.4028234663852885981170418348452e+38), _456), _465), _473), _478), _483), _488), _496), _501), _509);
    float4 _526;
    _526.x = float((fast::max(spvFSub(_511.x, _510.x), spvFSub(_511.y, _510.y)) > 0.5) ? (int(uint(max(int(uint(max(int(_41(_27._m0[_22._m2._m0], _22._m2._m1, _363, _390, _390 + uint2(4294967295u, 0u), ((_407 << uint2(3u)) | uint2(7u, 0u)) + uint2(int2(rint(_32.sample(_3, _409, level(0.0))).xy)), uint2(0u, 1u))), int(_41(_27._m0[_22._m2._m0], _22._m2._m1, _363, _390 + uint2(7u, 0u), _390 + uint2(8u, 0u), (_438 << uint2(3u)) + uint2(int2(rint(_32.sample(_3, _440, level(0.0))).xy)), uint2(0u, 1u)))))), int(uint(max(int(_41(_27._m0[_22._m2._m0], _22._m2._m1, _363, _390, _390 + uint2(0u, 4294967295u), ((_393 << uint2(3u)) | uint2(0u, 7u)) + uint2(int2(rint(_32.sample(_3, _395, level(0.0))).xy)), uint2(1u, 0u))), int(_41(_27._m0[_22._m2._m0], _22._m2._m1, _363, _390 + uint2(0u, 7u), _390 + uint2(0u, 8u), (_424 << uint2(3u)) + uint2(int2(rint(_32.sample(_3, _426, level(0.0))).xy)), uint2(1u, 0u))))))))) > int(0u)) : false);
    _35.write(_526.xxxx, uint2(_376));
}
