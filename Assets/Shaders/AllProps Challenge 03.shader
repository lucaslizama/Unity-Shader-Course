Shader "Lucas/AllProps Challenge 03"
{
    Properties
    {
        _myTex ("Texture", 2D) = "white" {}
    }
    SubShader
    {
        CGPROGRAM
            #pragma surface surf Lambert

            sampler2D _myTex;

            struct Input {
                float2 uv_myTex;
                float3 worldRefl;
            };

            void surf (Input IN, inout SurfaceOutput o) {
                float3 tex = tex2D(_myTex, IN.uv_myTex);
                tex = tex * float3(0,1,0);

                o.Albedo = tex;
            }
        ENDCG
    }
    FallBack "Diffuse"
}
