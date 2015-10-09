.class public Landroid/filterpacks/imageproc/AutoFixFilter;
.super Landroid/filterfw/core/Filter;
.source "AutoFixFilter.java"


# static fields
.field private static final normal_cdf:[I


# instance fields
.field private final mAutoFixShader:Ljava/lang/String;

.field private mDensityFrame:Landroid/filterfw/core/Frame;

.field private mHeight:I

.field private mHistFrame:Landroid/filterfw/core/Frame;

.field private mNativeProgram:Landroid/filterfw/core/Program;

.field private mScale:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "scale"
    .end annotation
.end field

.field private mShaderProgram:Landroid/filterfw/core/Program;

.field private mTarget:I

.field private mTileSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "tile_size"
    .end annotation
.end field

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/16 v0, 0x400

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/filterpacks/imageproc/AutoFixFilter;->normal_cdf:[I

    return-void

    :array_0
    .array-data 4
        0x9
        0x21
        0x32
        0x40
        0x4b
        0x54
        0x5c
        0x63
        0x6a
        0x70
        0x75
        0x7a
        0x7e
        0x82
        0x86
        0x8a
        0x8e
        0x91
        0x94
        0x96
        0x9a
        0x9d
        0x9f
        0xa2
        0xa4
        0xa6
        0xa9
        0xaa
        0xad
        0xaf
        0xb1
        0xb3
        0xb4
        0xb6
        0xb8
        0xba
        0xbc
        0xbd
        0xbe
        0xc0
        0xc2
        0xc3
        0xc5
        0xc6
        0xc7
        0xc8
        0xca
        0xcb
        0xcd
        0xce
        0xcf
        0xd0
        0xd1
        0xd2
        0xd4
        0xd5
        0xd6
        0xd7
        0xd8
        0xd9
        0xda
        0xdb
        0xdc
        0xdd
        0xde
        0xdf
        0xe0
        0xe1
        0xe2
        0xe3
        0xe4
        0xe5
        0xe5
        0xe6
        0xe7
        0xe8
        0xe9
        0xea
        0xeb
        0xec
        0xec
        0xed
        0xee
        0xef
        0xef
        0xf0
        0xf0
        0xf2
        0xf2
        0xf3
        0xf4
        0xf5
        0xf5
        0xf6
        0xf7
        0xf7
        0xf8
        0xf9
        0xf9
        0xfa
        0xfa
        0xfb
        0xfc
        0xfd
        0xfd
        0xfe
        0xff
        0xff
        0x100
        0x100
        0x101
        0x102
        0x102
        0x103
        0x103
        0x103
        0x104
        0x105
        0x106
        0x106
        0x107
        0x107
        0x108
        0x108
        0x109
        0x109
        0x10a
        0x10b
        0x10b
        0x10c
        0x10c
        0x10d
        0x10d
        0x10d
        0x10e
        0x10e
        0x10f
        0x110
        0x110
        0x111
        0x111
        0x112
        0x112
        0x113
        0x113
        0x114
        0x114
        0x115
        0x115
        0x115
        0x116
        0x116
        0x117
        0x117
        0x117
        0x118
        0x118
        0x119
        0x11a
        0x11a
        0x11a
        0x11b
        0x11b
        0x11c
        0x11c
        0x11d
        0x11d
        0x11d
        0x11e
        0x11e
        0x11f
        0x11f
        0x120
        0x120
        0x120
        0x121
        0x121
        0x121
        0x122
        0x122
        0x122
        0x123
        0x124
        0x124
        0x124
        0x125
        0x125
        0x126
        0x126
        0x126
        0x127
        0x127
        0x128
        0x128
        0x128
        0x129
        0x129
        0x129
        0x12a
        0x12a
        0x12a
        0x12b
        0x12b
        0x12b
        0x12b
        0x12c
        0x12c
        0x12d
        0x12d
        0x12e
        0x12e
        0x12e
        0x12f
        0x12f
        0x130
        0x130
        0x130
        0x131
        0x131
        0x131
        0x132
        0x132
        0x132
        0x133
        0x133
        0x133
        0x134
        0x134
        0x134
        0x135
        0x135
        0x135
        0x135
        0x136
        0x136
        0x136
        0x136
        0x137
        0x138
        0x138
        0x138
        0x139
        0x139
        0x139
        0x13a
        0x13a
        0x13a
        0x13b
        0x13b
        0x13b
        0x13b
        0x13c
        0x13c
        0x13c
        0x13d
        0x13d
        0x13d
        0x13e
        0x13e
        0x13e
        0x13f
        0x13f
        0x13f
        0x13f
        0x13f
        0x140
        0x140
        0x140
        0x141
        0x141
        0x142
        0x142
        0x142
        0x143
        0x143
        0x143
        0x143
        0x144
        0x144
        0x144
        0x145
        0x145
        0x145
        0x145
        0x146
        0x146
        0x146
        0x147
        0x147
        0x147
        0x147
        0x148
        0x148
        0x148
        0x149
        0x149
        0x149
        0x149
        0x149
        0x14a
        0x14a
        0x14a
        0x14a
        0x14b
        0x14b
        0x14c
        0x14c
        0x14c
        0x14d
        0x14d
        0x14d
        0x14d
        0x14e
        0x14e
        0x14e
        0x14e
        0x14f
        0x14f
        0x14f
        0x150
        0x150
        0x150
        0x150
        0x151
        0x151
        0x151
        0x151
        0x152
        0x152
        0x152
        0x153
        0x153
        0x153
        0x153
        0x153
        0x153
        0x154
        0x154
        0x154
        0x154
        0x155
        0x155
        0x156
        0x156
        0x156
        0x156
        0x157
        0x157
        0x157
        0x158
        0x158
        0x158
        0x158
        0x159
        0x159
        0x159
        0x159
        0x15a
        0x15a
        0x15a
        0x15a
        0x15b
        0x15b
        0x15b
        0x15b
        0x15c
        0x15c
        0x15c
        0x15c
        0x15d
        0x15d
        0x15d
        0x15d
        0x15d
        0x15d
        0x15e
        0x15e
        0x15e
        0x15e
        0x15f
        0x15f
        0x160
        0x160
        0x160
        0x160
        0x161
        0x161
        0x161
        0x161
        0x162
        0x162
        0x162
        0x162
        0x163
        0x163
        0x163
        0x163
        0x164
        0x164
        0x164
        0x164
        0x165
        0x165
        0x165
        0x165
        0x166
        0x166
        0x166
        0x166
        0x167
        0x167
        0x167
        0x167
        0x167
        0x167
        0x167
        0x168
        0x168
        0x168
        0x168
        0x169
        0x169
        0x16a
        0x16a
        0x16a
        0x16a
        0x16b
        0x16b
        0x16b
        0x16b
        0x16c
        0x16c
        0x16c
        0x16c
        0x16d
        0x16d
        0x16d
        0x16d
        0x16e
        0x16e
        0x16e
        0x16e
        0x16e
        0x16f
        0x16f
        0x16f
        0x16f
        0x170
        0x170
        0x170
        0x170
        0x171
        0x171
        0x171
        0x171
        0x171
        0x171
        0x172
        0x172
        0x172
        0x172
        0x172
        0x173
        0x173
        0x174
        0x174
        0x174
        0x174
        0x175
        0x175
        0x175
        0x175
        0x176
        0x176
        0x176
        0x176
        0x176
        0x177
        0x177
        0x177
        0x177
        0x178
        0x178
        0x178
        0x178
        0x179
        0x179
        0x179
        0x179
        0x17a
        0x17a
        0x17a
        0x17a
        0x17a
        0x17b
        0x17b
        0x17b
        0x17b
        0x17b
        0x17b
        0x17c
        0x17c
        0x17c
        0x17c
        0x17d
        0x17d
        0x17d
        0x17e
        0x17e
        0x17e
        0x17e
        0x17f
        0x17f
        0x17f
        0x17f
        0x180
        0x180
        0x180
        0x180
        0x181
        0x181
        0x181
        0x181
        0x181
        0x182
        0x182
        0x182
        0x182
        0x183
        0x183
        0x183
        0x183
        0x184
        0x184
        0x184
        0x184
        0x184
        0x185
        0x185
        0x185
        0x185
        0x185
        0x185
        0x186
        0x186
        0x186
        0x186
        0x187
        0x187
        0x188
        0x188
        0x188
        0x188
        0x188
        0x189
        0x189
        0x189
        0x189
        0x18a
        0x18a
        0x18a
        0x18a
        0x18b
        0x18b
        0x18b
        0x18b
        0x18c
        0x18c
        0x18c
        0x18c
        0x18c
        0x18d
        0x18d
        0x18d
        0x18d
        0x18e
        0x18e
        0x18e
        0x18e
        0x18f
        0x18f
        0x18f
        0x18f
        0x18f
        0x18f
        0x190
        0x190
        0x190
        0x190
        0x190
        0x191
        0x191
        0x192
        0x192
        0x192
        0x192
        0x193
        0x193
        0x193
        0x193
        0x194
        0x194
        0x194
        0x194
        0x195
        0x195
        0x195
        0x195
        0x196
        0x196
        0x196
        0x196
        0x196
        0x197
        0x197
        0x197
        0x197
        0x198
        0x198
        0x198
        0x198
        0x199
        0x199
        0x199
        0x199
        0x199
        0x199
        0x19a
        0x19a
        0x19a
        0x19a
        0x19b
        0x19b
        0x19c
        0x19c
        0x19c
        0x19c
        0x19d
        0x19d
        0x19d
        0x19d
        0x19e
        0x19e
        0x19e
        0x19e
        0x19f
        0x19f
        0x19f
        0x19f
        0x1a0
        0x1a0
        0x1a0
        0x1a0
        0x1a1
        0x1a1
        0x1a1
        0x1a1
        0x1a2
        0x1a2
        0x1a2
        0x1a2
        0x1a3
        0x1a3
        0x1a3
        0x1a3
        0x1a3
        0x1a3
        0x1a4
        0x1a4
        0x1a4
        0x1a4
        0x1a5
        0x1a5
        0x1a6
        0x1a6
        0x1a6
        0x1a6
        0x1a7
        0x1a7
        0x1a7
        0x1a7
        0x1a8
        0x1a8
        0x1a8
        0x1a9
        0x1a9
        0x1a9
        0x1a9
        0x1aa
        0x1aa
        0x1aa
        0x1aa
        0x1ab
        0x1ab
        0x1ab
        0x1ab
        0x1ac
        0x1ac
        0x1ac
        0x1ad
        0x1ad
        0x1ad
        0x1ad
        0x1ad
        0x1ad
        0x1ae
        0x1ae
        0x1ae
        0x1ae
        0x1af
        0x1af
        0x1b0
        0x1b0
        0x1b0
        0x1b1
        0x1b1
        0x1b1
        0x1b1
        0x1b2
        0x1b2
        0x1b2
        0x1b3
        0x1b3
        0x1b3
        0x1b3
        0x1b4
        0x1b4
        0x1b4
        0x1b4
        0x1b5
        0x1b5
        0x1b5
        0x1b6
        0x1b6
        0x1b6
        0x1b6
        0x1b7
        0x1b7
        0x1b7
        0x1b7
        0x1b7
        0x1b8
        0x1b8
        0x1b8
        0x1b9
        0x1b9
        0x1ba
        0x1ba
        0x1ba
        0x1bb
        0x1bb
        0x1bb
        0x1bb
        0x1bc
        0x1bc
        0x1bc
        0x1bd
        0x1bd
        0x1bd
        0x1be
        0x1be
        0x1be
        0x1be
        0x1bf
        0x1bf
        0x1bf
        0x1c0
        0x1c0
        0x1c0
        0x1c1
        0x1c1
        0x1c1
        0x1c1
        0x1c1
        0x1c2
        0x1c2
        0x1c2
        0x1c3
        0x1c3
        0x1c4
        0x1c4
        0x1c4
        0x1c5
        0x1c5
        0x1c5
        0x1c6
        0x1c6
        0x1c6
        0x1c7
        0x1c7
        0x1c7
        0x1c8
        0x1c8
        0x1c8
        0x1c9
        0x1c9
        0x1c9
        0x1ca
        0x1ca
        0x1ca
        0x1cb
        0x1cb
        0x1cb
        0x1cb
        0x1cc
        0x1cc
        0x1cc
        0x1cd
        0x1cd
        0x1ce
        0x1ce
        0x1ce
        0x1cf
        0x1cf
        0x1cf
        0x1d0
        0x1d0
        0x1d1
        0x1d1
        0x1d1
        0x1d2
        0x1d2
        0x1d2
        0x1d3
        0x1d3
        0x1d3
        0x1d4
        0x1d4
        0x1d5
        0x1d5
        0x1d5
        0x1d5
        0x1d6
        0x1d6
        0x1d6
        0x1d7
        0x1d8
        0x1d8
        0x1d8
        0x1d9
        0x1d9
        0x1da
        0x1da
        0x1da
        0x1db
        0x1db
        0x1dc
        0x1dc
        0x1dc
        0x1dd
        0x1dd
        0x1de
        0x1de
        0x1de
        0x1df
        0x1df
        0x1df
        0x1e0
        0x1e0
        0x1e0
        0x1e1
        0x1e2
        0x1e2
        0x1e3
        0x1e3
        0x1e4
        0x1e4
        0x1e4
        0x1e5
        0x1e5
        0x1e6
        0x1e6
        0x1e7
        0x1e7
        0x1e8
        0x1e8
        0x1e8
        0x1e9
        0x1e9
        0x1e9
        0x1ea
        0x1ea
        0x1eb
        0x1ec
        0x1ec
        0x1ed
        0x1ed
        0x1ee
        0x1ee
        0x1ef
        0x1ef
        0x1f0
        0x1f0
        0x1f1
        0x1f1
        0x1f2
        0x1f2
        0x1f3
        0x1f3
        0x1f3
        0x1f4
        0x1f5
        0x1f6
        0x1f6
        0x1f7
        0x1f7
        0x1f8
        0x1f8
        0x1f9
        0x1f9
        0x1fa
        0x1fb
        0x1fb
        0x1fc
        0x1fc
        0x1fd
        0x1fd
        0x1fe
        0x1fe
        0x1ff
        0x200
        0x201
        0x201
        0x202
        0x203
        0x203
        0x204
        0x205
        0x205
        0x206
        0x207
        0x207
        0x207
        0x208
        0x209
        0x20a
        0x20b
        0x20c
        0x20c
        0x20d
        0x20e
        0x20e
        0x20f
        0x210
        0x211
        0x211
        0x212
        0x213
        0x214
        0x215
        0x216
        0x217
        0x217
        0x218
        0x219
        0x21a
        0x21b
        0x21b
        0x21c
        0x21e
        0x21f
        0x220
        0x221
        0x222
        0x223
        0x224
        0x225
        0x225
        0x226
        0x228
        0x229
        0x22a
        0x22b
        0x22c
        0x22e
        0x22f
        0x22f
        0x231
        0x232
        0x234
        0x235
        0x236
        0x238
        0x239
        0x23a
        0x23c
        0x23e
        0x23f
        0x241
        0x242
        0x243
        0x246
        0x247
        0x249
        0x24b
        0x24d
        0x24e
        0x251
        0x253
        0x255
        0x257
        0x25a
        0x25c
        0x25f
        0x261
        0x264
        0x267
        0x26a
        0x26c
        0x270
        0x274
        0x277
        0x27b
        0x27f
        0x284
        0x289
        0x28e
        0x293
        0x29a
        0x2a1
        0x2a8
        0x2b2
        0x2bc
        0x2ca
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 162
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 33
    const/16 v0, 0x280

    iput v0, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mTileSize:I

    .line 110
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform sampler2D tex_sampler_2;\nuniform float scale;\nuniform float shift_scale;\nuniform float hist_offset;\nuniform float hist_scale;\nuniform float density_offset;\nuniform float density_scale;\nvarying vec2 v_texcoord;\nvoid main() {\n  const vec3 weights = vec3(0.33333, 0.33333, 0.33333);\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float energy = dot(color.rgb, weights);\n  float mask_value = energy - 0.5;\n  float alpha;\n  if (mask_value > 0.0) {\n    alpha = (pow(2.0 * mask_value, 1.5) - 1.0) * scale + 1.0;\n  } else { \n    alpha = (pow(2.0 * mask_value, 2.0) - 1.0) * scale + 1.0;\n  }\n  float index = energy * hist_scale + hist_offset;\n  vec4 temp = texture2D(tex_sampler_1, vec2(index, 0.5));\n  float value = temp.g + temp.r * shift_scale;\n  index = value * density_scale + density_offset;\n  temp = texture2D(tex_sampler_2, vec2(index, 0.5));\n  value = temp.g + temp.r * shift_scale;\n  float dst_energy = energy * alpha + value * (1.0 - alpha);\n  float max_energy = energy / max(color.r, max(color.g, color.b));\n  if (dst_energy > max_energy) {\n    dst_energy = max_energy;\n  }\n  if (energy == 0.0) {\n    gl_FragColor = color;\n  } else {\n    gl_FragColor = vec4(color.rgb * dst_energy / energy, color.a);\n  }\n}\n"

    iput-object v0, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mAutoFixShader:Ljava/lang/String;

    .line 154
    iput v1, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mWidth:I

    .line 155
    iput v1, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mHeight:I

    .line 156
    iput v1, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mTarget:I

    .line 163
    return-void
.end method

.method private createHistogramFrame(Landroid/filterfw/core/FilterContext;II[I)V
    .locals 22
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "data"    # [I

    .prologue
    .line 273
    const/16 v7, 0x2fe

    .line 274
    .local v7, "histDims":I
    new-array v6, v7, [I

    .line 276
    .local v6, "histArray":[I
    const v3, 0x3d4ccccd    # 0.05f

    .line 277
    .local v3, "border_thickness_ratio":F
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v3

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v17, v0

    .line 278
    .local v17, "y_border_thickness":I
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v3

    move/from16 v0, v18

    float-to-int v15, v0

    .line 279
    .local v15, "x_border_thickness":I
    mul-int/lit8 v18, v15, 0x2

    sub-int v18, p2, v18

    mul-int/lit8 v19, v17, 0x2

    sub-int v19, p3, v19

    mul-int v10, v18, v19

    .line 281
    .local v10, "pixels":I
    const/4 v4, 0x0

    .line 282
    .local v4, "count":F
    move/from16 v16, v17

    .local v16, "y":I
    :goto_0
    sub-int v18, p3, v17

    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 283
    move v14, v15

    .local v14, "x":I
    :goto_1
    sub-int v18, p2, v15

    move/from16 v0, v18

    if-ge v14, v0, :cond_0

    .line 284
    mul-int v18, v16, p2

    add-int v9, v18, v14

    .line 285
    .local v9, "index":I
    aget v18, p4, v9

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    aget v19, p4, v9

    shr-int/lit8 v19, v19, 0x8

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    add-int v18, v18, v19

    aget v19, p4, v9

    shr-int/lit8 v19, v19, 0x10

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    add-int v5, v18, v19

    .line 287
    .local v5, "energy":I
    aget v18, v6, v5

    add-int/lit8 v18, v18, 0x1

    aput v18, v6, v5

    .line 283
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 282
    .end local v5    # "energy":I
    .end local v9    # "index":I
    :cond_0
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 291
    .end local v14    # "x":I
    :cond_1
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_2
    if-ge v8, v7, :cond_2

    .line 292
    aget v18, v6, v8

    add-int/lit8 v19, v8, -0x1

    aget v19, v6, v19

    add-int v18, v18, v19

    aput v18, v6, v8

    .line 291
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 295
    :cond_2
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_3

    .line 296
    const-wide/32 v18, 0xffff

    aget v20, v6, v8

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    mul-long v18, v18, v20

    int-to-long v0, v10

    move-wide/from16 v20, v0

    div-long v12, v18, v20

    .line 297
    .local v12, "temp":J
    long-to-int v0, v12

    move/from16 v18, v0

    aput v18, v6, v8

    .line 295
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 300
    .end local v12    # "temp":J
    :cond_3
    const/16 v18, 0x1

    const/16 v19, 0x3

    const/16 v20, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v7, v0, v1, v2}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v11

    .line 303
    .local v11, "shaderHistFormat":Landroid/filterfw/core/FrameFormat;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/imageproc/AutoFixFilter;->mHistFrame:Landroid/filterfw/core/Frame;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/imageproc/AutoFixFilter;->mHistFrame:Landroid/filterfw/core/Frame;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 306
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/filterpacks/imageproc/AutoFixFilter;->mHistFrame:Landroid/filterfw/core/Frame;

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/imageproc/AutoFixFilter;->mHistFrame:Landroid/filterfw/core/Frame;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/filterfw/core/Frame;->setInts([I)V

    .line 308
    return-void
.end method

.method private initParameters()V
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mShaderProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v1, "shift_scale"

    const/high16 v2, 0x3b800000    # 0.00390625f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 193
    iget-object v0, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mShaderProgram:Landroid/filterfw/core/Program;

    const-string v1, "hist_offset"

    const v2, 0x3a2b1cbe

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 194
    iget-object v0, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mShaderProgram:Landroid/filterfw/core/Program;

    const-string v1, "hist_scale"

    const v2, 0x3f7faa72

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 195
    iget-object v0, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mShaderProgram:Landroid/filterfw/core/Program;

    const-string v1, "density_offset"

    const/high16 v2, 0x3a000000

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 196
    iget-object v0, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mShaderProgram:Landroid/filterfw/core/Program;

    const-string v1, "density_scale"

    const v2, 0x3f7fc000

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 197
    iget-object v0, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mShaderProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v1, "scale"

    iget v2, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mScale:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 198
    return-void
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 234
    iget-object v0, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mShaderProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mShaderProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v1, "scale"

    iget v2, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mScale:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 237
    :cond_0
    return-void
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .prologue
    .line 173
    return-object p2
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "target"    # I

    .prologue
    .line 177
    packed-switch p2, :pswitch_data_0

    .line 185
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Filter Sharpen does not support frames of target "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 179
    :pswitch_0
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform sampler2D tex_sampler_2;\nuniform float scale;\nuniform float shift_scale;\nuniform float hist_offset;\nuniform float hist_scale;\nuniform float density_offset;\nuniform float density_scale;\nvarying vec2 v_texcoord;\nvoid main() {\n  const vec3 weights = vec3(0.33333, 0.33333, 0.33333);\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float energy = dot(color.rgb, weights);\n  float mask_value = energy - 0.5;\n  float alpha;\n  if (mask_value > 0.0) {\n    alpha = (pow(2.0 * mask_value, 1.5) - 1.0) * scale + 1.0;\n  } else { \n    alpha = (pow(2.0 * mask_value, 2.0) - 1.0) * scale + 1.0;\n  }\n  float index = energy * hist_scale + hist_offset;\n  vec4 temp = texture2D(tex_sampler_1, vec2(index, 0.5));\n  float value = temp.g + temp.r * shift_scale;\n  index = value * density_scale + density_offset;\n  temp = texture2D(tex_sampler_2, vec2(index, 0.5));\n  value = temp.g + temp.r * shift_scale;\n  float dst_energy = energy * alpha + value * (1.0 - alpha);\n  float max_energy = energy / max(color.r, max(color.g, color.b));\n  if (dst_energy > max_energy) {\n    dst_energy = max_energy;\n  }\n  if (energy == 0.0) {\n    gl_FragColor = color;\n  } else {\n    gl_FragColor = vec4(color.rgb * dst_energy / energy, color.a);\n  }\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 180
    .local v0, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 181
    iput-object v0, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mShaderProgram:Landroid/filterfw/core/Program;

    .line 188
    iput p2, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mTarget:I

    .line 189
    return-void

    .line 177
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method protected prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 14
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/4 v13, 0x3

    .line 202
    const/16 v0, 0x400

    .line 203
    .local v0, "densityDim":I
    const/16 v3, 0x2fe

    .line 204
    .local v3, "histDim":I
    const-wide/32 v5, 0xffff

    .line 206
    .local v5, "precision":J
    new-array v2, v0, [I

    .line 207
    .local v2, "densityTable":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_0

    .line 208
    sget-object v9, Landroid/filterpacks/imageproc/AutoFixFilter;->normal_cdf:[I

    aget v9, v9, v4

    int-to-long v9, v9

    mul-long/2addr v9, v5

    int-to-long v11, v3

    div-long v7, v9, v11

    .line 209
    .local v7, "temp":J
    long-to-int v9, v7

    aput v9, v2, v4

    .line 207
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 212
    .end local v7    # "temp":J
    :cond_0
    const/4 v9, 0x1

    invoke-static {v0, v9, v13, v13}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    .line 215
    .local v1, "densityFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v9

    iput-object v9, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mDensityFrame:Landroid/filterfw/core/Frame;

    .line 216
    iget-object v9, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mDensityFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v9, v2}, Landroid/filterfw/core/Frame;->setInts([I)V

    .line 217
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 7
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 242
    const-string v4, "image"

    invoke-virtual {p0, v4}, Landroid/filterpacks/imageproc/AutoFixFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 243
    .local v0, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    .line 246
    .local v1, "inputFormat":Landroid/filterfw/core/FrameFormat;
    iget-object v4, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mShaderProgram:Landroid/filterfw/core/Program;

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v4

    iget v5, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mTarget:I

    if-eq v4, v5, :cond_1

    .line 247
    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v4

    invoke-virtual {p0, p1, v4}, Landroid/filterpacks/imageproc/AutoFixFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 248
    invoke-direct {p0}, Landroid/filterpacks/imageproc/AutoFixFilter;->initParameters()V

    .line 252
    :cond_1
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mWidth:I

    if-ne v4, v5, :cond_2

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mHeight:I

    if-eq v4, v5, :cond_3

    .line 253
    :cond_2
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v4

    iput v4, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mWidth:I

    .line 254
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v4

    iput v4, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mHeight:I

    .line 255
    iget v4, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mWidth:I

    iget v5, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mHeight:I

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getInts()[I

    move-result-object v6

    invoke-direct {p0, p1, v4, v5, v6}, Landroid/filterpacks/imageproc/AutoFixFilter;->createHistogramFrame(Landroid/filterfw/core/FilterContext;II[I)V

    .line 259
    :cond_3
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v3

    .line 262
    .local v3, "output":Landroid/filterfw/core/Frame;
    const/4 v4, 0x3

    new-array v2, v4, [Landroid/filterfw/core/Frame;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    const/4 v4, 0x1

    iget-object v5, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mHistFrame:Landroid/filterfw/core/Frame;

    aput-object v5, v2, v4

    const/4 v4, 0x2

    iget-object v5, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mDensityFrame:Landroid/filterfw/core/Frame;

    aput-object v5, v2, v4

    .line 263
    .local v2, "inputs":[Landroid/filterfw/core/Frame;
    iget-object v4, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mShaderProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v4, v2, v3}, Landroid/filterfw/core/Program;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 266
    const-string v4, "image"

    invoke-virtual {p0, v4, v3}, Landroid/filterpacks/imageproc/AutoFixFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 269
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 270
    return-void
.end method

.method public setupPorts()V
    .locals 2

    .prologue
    .line 167
    const-string v0, "image"

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/AutoFixFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 168
    const-string v0, "image"

    const-string v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/AutoFixFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/4 v1, 0x0

    .line 221
    iget-object v0, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mDensityFrame:Landroid/filterfw/core/Frame;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mDensityFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 223
    iput-object v1, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mDensityFrame:Landroid/filterfw/core/Frame;

    .line 226
    :cond_0
    iget-object v0, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mHistFrame:Landroid/filterfw/core/Frame;

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mHistFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 228
    iput-object v1, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mHistFrame:Landroid/filterfw/core/Frame;

    .line 230
    :cond_1
    return-void
.end method
