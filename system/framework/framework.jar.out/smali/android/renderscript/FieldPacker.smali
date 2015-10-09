.class public Landroid/renderscript/FieldPacker;
.super Ljava/lang/Object;
.source "FieldPacker.java"


# instance fields
.field private mAlignment:Ljava/util/BitSet;

.field private final mData:[B

.field private mLen:I

.field private mPos:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "len"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Landroid/renderscript/FieldPacker;->mPos:I

    .line 34
    iput p1, p0, Landroid/renderscript/FieldPacker;->mLen:I

    .line 35
    new-array v0, p1, [B

    iput-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    .line 36
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Landroid/renderscript/FieldPacker;->mAlignment:Ljava/util/BitSet;

    .line 37
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Landroid/renderscript/FieldPacker;->mPos:I

    .line 41
    array-length v0, p1

    iput v0, p0, Landroid/renderscript/FieldPacker;->mLen:I

    .line 42
    iput-object p1, p0, Landroid/renderscript/FieldPacker;->mData:[B

    .line 43
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Landroid/renderscript/FieldPacker;->mAlignment:Ljava/util/BitSet;

    .line 44
    return-void
.end method


# virtual methods
.method public addBoolean(Z)V
    .locals 1
    .param p1, "v"    # Z

    .prologue
    .line 579
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI8(B)V

    .line 580
    return-void

    .line 579
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addF32(F)V
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 218
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 219
    return-void
.end method

.method public addF32(Landroid/renderscript/Float2;)V
    .locals 1
    .param p1, "v"    # Landroid/renderscript/Float2;

    .prologue
    .line 242
    iget v0, p1, Landroid/renderscript/Float2;->x:F

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 243
    iget v0, p1, Landroid/renderscript/Float2;->y:F

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 244
    return-void
.end method

.method public addF32(Landroid/renderscript/Float3;)V
    .locals 1
    .param p1, "v"    # Landroid/renderscript/Float3;

    .prologue
    .line 246
    iget v0, p1, Landroid/renderscript/Float3;->x:F

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 247
    iget v0, p1, Landroid/renderscript/Float3;->y:F

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 248
    iget v0, p1, Landroid/renderscript/Float3;->z:F

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 249
    return-void
.end method

.method public addF32(Landroid/renderscript/Float4;)V
    .locals 1
    .param p1, "v"    # Landroid/renderscript/Float4;

    .prologue
    .line 251
    iget v0, p1, Landroid/renderscript/Float4;->x:F

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 252
    iget v0, p1, Landroid/renderscript/Float4;->y:F

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 253
    iget v0, p1, Landroid/renderscript/Float4;->z:F

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 254
    iget v0, p1, Landroid/renderscript/Float4;->w:F

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 255
    return-void
.end method

.method public addF64(D)V
    .locals 2
    .param p1, "v"    # D

    .prologue
    .line 226
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 227
    return-void
.end method

.method public addF64(Landroid/renderscript/Double2;)V
    .locals 2
    .param p1, "v"    # Landroid/renderscript/Double2;

    .prologue
    .line 258
    iget-wide v0, p1, Landroid/renderscript/Double2;->x:D

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addF64(D)V

    .line 259
    iget-wide v0, p1, Landroid/renderscript/Double2;->y:D

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addF64(D)V

    .line 260
    return-void
.end method

.method public addF64(Landroid/renderscript/Double3;)V
    .locals 2
    .param p1, "v"    # Landroid/renderscript/Double3;

    .prologue
    .line 262
    iget-wide v0, p1, Landroid/renderscript/Double3;->x:D

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addF64(D)V

    .line 263
    iget-wide v0, p1, Landroid/renderscript/Double3;->y:D

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addF64(D)V

    .line 264
    iget-wide v0, p1, Landroid/renderscript/Double3;->z:D

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addF64(D)V

    .line 265
    return-void
.end method

.method public addF64(Landroid/renderscript/Double4;)V
    .locals 2
    .param p1, "v"    # Landroid/renderscript/Double4;

    .prologue
    .line 267
    iget-wide v0, p1, Landroid/renderscript/Double4;->x:D

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addF64(D)V

    .line 268
    iget-wide v0, p1, Landroid/renderscript/Double4;->y:D

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addF64(D)V

    .line 269
    iget-wide v0, p1, Landroid/renderscript/Double4;->z:D

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addF64(D)V

    .line 270
    iget-wide v0, p1, Landroid/renderscript/Double4;->w:D

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addF64(D)V

    .line 271
    return-void
.end method

.method public addI16(Landroid/renderscript/Short2;)V
    .locals 1
    .param p1, "v"    # Landroid/renderscript/Short2;

    .prologue
    .line 306
    iget-short v0, p1, Landroid/renderscript/Short2;->x:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI16(S)V

    .line 307
    iget-short v0, p1, Landroid/renderscript/Short2;->y:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI16(S)V

    .line 308
    return-void
.end method

.method public addI16(Landroid/renderscript/Short3;)V
    .locals 1
    .param p1, "v"    # Landroid/renderscript/Short3;

    .prologue
    .line 310
    iget-short v0, p1, Landroid/renderscript/Short3;->x:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI16(S)V

    .line 311
    iget-short v0, p1, Landroid/renderscript/Short3;->y:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI16(S)V

    .line 312
    iget-short v0, p1, Landroid/renderscript/Short3;->z:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI16(S)V

    .line 313
    return-void
.end method

.method public addI16(Landroid/renderscript/Short4;)V
    .locals 1
    .param p1, "v"    # Landroid/renderscript/Short4;

    .prologue
    .line 315
    iget-short v0, p1, Landroid/renderscript/Short4;->x:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI16(S)V

    .line 316
    iget-short v0, p1, Landroid/renderscript/Short4;->y:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI16(S)V

    .line 317
    iget-short v0, p1, Landroid/renderscript/Short4;->z:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI16(S)V

    .line 318
    iget-short v0, p1, Landroid/renderscript/Short4;->w:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI16(S)V

    .line 319
    return-void
.end method

.method public addI16(S)V
    .locals 3
    .param p1, "v"    # S

    .prologue
    .line 103
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->align(I)V

    .line 104
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 105
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 106
    return-void
.end method

.method public addI32(I)V
    .locals 3
    .param p1, "v"    # I

    .prologue
    .line 118
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->align(I)V

    .line 119
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 120
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 121
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 122
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    shr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 123
    return-void
.end method

.method public addI32(Landroid/renderscript/Int2;)V
    .locals 1
    .param p1, "v"    # Landroid/renderscript/Int2;

    .prologue
    .line 338
    iget v0, p1, Landroid/renderscript/Int2;->x:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 339
    iget v0, p1, Landroid/renderscript/Int2;->y:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 340
    return-void
.end method

.method public addI32(Landroid/renderscript/Int3;)V
    .locals 1
    .param p1, "v"    # Landroid/renderscript/Int3;

    .prologue
    .line 342
    iget v0, p1, Landroid/renderscript/Int3;->x:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 343
    iget v0, p1, Landroid/renderscript/Int3;->y:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 344
    iget v0, p1, Landroid/renderscript/Int3;->z:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 345
    return-void
.end method

.method public addI32(Landroid/renderscript/Int4;)V
    .locals 1
    .param p1, "v"    # Landroid/renderscript/Int4;

    .prologue
    .line 347
    iget v0, p1, Landroid/renderscript/Int4;->x:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 348
    iget v0, p1, Landroid/renderscript/Int4;->y:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 349
    iget v0, p1, Landroid/renderscript/Int4;->z:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 350
    iget v0, p1, Landroid/renderscript/Int4;->w:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 351
    return-void
.end method

.method public addI64(J)V
    .locals 7
    .param p1, "v"    # J

    .prologue
    const/16 v6, 0x8

    const-wide/16 v4, 0xff

    .line 137
    invoke-virtual {p0, v6}, Landroid/renderscript/FieldPacker;->align(I)V

    .line 138
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    and-long v2, p1, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 139
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    shr-long v2, p1, v6

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 140
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x10

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 141
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x18

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 142
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x20

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 143
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x28

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 144
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x30

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 145
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x38

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 146
    return-void
.end method

.method public addI64(Landroid/renderscript/Long2;)V
    .locals 2
    .param p1, "v"    # Landroid/renderscript/Long2;

    .prologue
    .line 370
    iget-wide v0, p1, Landroid/renderscript/Long2;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 371
    iget-wide v0, p1, Landroid/renderscript/Long2;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 372
    return-void
.end method

.method public addI64(Landroid/renderscript/Long3;)V
    .locals 2
    .param p1, "v"    # Landroid/renderscript/Long3;

    .prologue
    .line 374
    iget-wide v0, p1, Landroid/renderscript/Long3;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 375
    iget-wide v0, p1, Landroid/renderscript/Long3;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 376
    iget-wide v0, p1, Landroid/renderscript/Long3;->z:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 377
    return-void
.end method

.method public addI64(Landroid/renderscript/Long4;)V
    .locals 2
    .param p1, "v"    # Landroid/renderscript/Long4;

    .prologue
    .line 379
    iget-wide v0, p1, Landroid/renderscript/Long4;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 380
    iget-wide v0, p1, Landroid/renderscript/Long4;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 381
    iget-wide v0, p1, Landroid/renderscript/Long4;->z:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 382
    iget-wide v0, p1, Landroid/renderscript/Long4;->w:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 383
    return-void
.end method

.method public addI8(B)V
    .locals 3
    .param p1, "v"    # B

    .prologue
    .line 94
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    aput-byte p1, v0, v1

    .line 95
    return-void
.end method

.method public addI8(Landroid/renderscript/Byte2;)V
    .locals 1
    .param p1, "v"    # Landroid/renderscript/Byte2;

    .prologue
    .line 274
    iget-byte v0, p1, Landroid/renderscript/Byte2;->x:B

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI8(B)V

    .line 275
    iget-byte v0, p1, Landroid/renderscript/Byte2;->y:B

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI8(B)V

    .line 276
    return-void
.end method

.method public addI8(Landroid/renderscript/Byte3;)V
    .locals 1
    .param p1, "v"    # Landroid/renderscript/Byte3;

    .prologue
    .line 278
    iget-byte v0, p1, Landroid/renderscript/Byte3;->x:B

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI8(B)V

    .line 279
    iget-byte v0, p1, Landroid/renderscript/Byte3;->y:B

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI8(B)V

    .line 280
    iget-byte v0, p1, Landroid/renderscript/Byte3;->z:B

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI8(B)V

    .line 281
    return-void
.end method

.method public addI8(Landroid/renderscript/Byte4;)V
    .locals 1
    .param p1, "v"    # Landroid/renderscript/Byte4;

    .prologue
    .line 283
    iget-byte v0, p1, Landroid/renderscript/Byte4;->x:B

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI8(B)V

    .line 284
    iget-byte v0, p1, Landroid/renderscript/Byte4;->y:B

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI8(B)V

    .line 285
    iget-byte v0, p1, Landroid/renderscript/Byte4;->z:B

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI8(B)V

    .line 286
    iget-byte v0, p1, Landroid/renderscript/Byte4;->w:B

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI8(B)V

    .line 287
    return-void
.end method

.method public addMatrix(Landroid/renderscript/Matrix2f;)V
    .locals 2
    .param p1, "v"    # Landroid/renderscript/Matrix2f;

    .prologue
    .line 565
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Landroid/renderscript/Matrix2f;->mMat:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 566
    iget-object v1, p1, Landroid/renderscript/Matrix2f;->mMat:[F

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 565
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 568
    :cond_0
    return-void
.end method

.method public addMatrix(Landroid/renderscript/Matrix3f;)V
    .locals 2
    .param p1, "v"    # Landroid/renderscript/Matrix3f;

    .prologue
    .line 551
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 552
    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 551
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 554
    :cond_0
    return-void
.end method

.method public addMatrix(Landroid/renderscript/Matrix4f;)V
    .locals 2
    .param p1, "v"    # Landroid/renderscript/Matrix4f;

    .prologue
    .line 537
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Landroid/renderscript/Matrix4f;->mMat:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 538
    iget-object v1, p1, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 537
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 540
    :cond_0
    return-void
.end method

.method public addObj(Landroid/renderscript/BaseObj;)V
    .locals 1
    .param p1, "obj"    # Landroid/renderscript/BaseObj;

    .prologue
    .line 234
    if-eqz p1, :cond_0

    .line 235
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 239
    :goto_0
    return-void

    .line 237
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI32(I)V

    goto :goto_0
.end method

.method public addU16(I)V
    .locals 3
    .param p1, "v"    # I

    .prologue
    .line 180
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    .line 181
    :cond_0
    const-string/jumbo v0, "rs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FieldPacker.addU16( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Saving value out of range for type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->align(I)V

    .line 185
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 186
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 187
    return-void
.end method

.method public addU16(Landroid/renderscript/Int2;)V
    .locals 1
    .param p1, "v"    # Landroid/renderscript/Int2;

    .prologue
    .line 322
    iget v0, p1, Landroid/renderscript/Int2;->x:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU16(I)V

    .line 323
    iget v0, p1, Landroid/renderscript/Int2;->y:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU16(I)V

    .line 324
    return-void
.end method

.method public addU16(Landroid/renderscript/Int3;)V
    .locals 1
    .param p1, "v"    # Landroid/renderscript/Int3;

    .prologue
    .line 326
    iget v0, p1, Landroid/renderscript/Int3;->x:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU16(I)V

    .line 327
    iget v0, p1, Landroid/renderscript/Int3;->y:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU16(I)V

    .line 328
    iget v0, p1, Landroid/renderscript/Int3;->z:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU16(I)V

    .line 329
    return-void
.end method

.method public addU16(Landroid/renderscript/Int4;)V
    .locals 1
    .param p1, "v"    # Landroid/renderscript/Int4;

    .prologue
    .line 331
    iget v0, p1, Landroid/renderscript/Int4;->x:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU16(I)V

    .line 332
    iget v0, p1, Landroid/renderscript/Int4;->y:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU16(I)V

    .line 333
    iget v0, p1, Landroid/renderscript/Int4;->z:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU16(I)V

    .line 334
    iget v0, p1, Landroid/renderscript/Int4;->w:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU16(I)V

    .line 335
    return-void
.end method

.method public addU32(J)V
    .locals 6
    .param p1, "v"    # J

    .prologue
    const-wide/16 v4, 0xff

    .line 190
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 191
    :cond_0
    const-string/jumbo v0, "rs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FieldPacker.addU32( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Saving value out of range for type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->align(I)V

    .line 195
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    and-long v2, p1, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 196
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x8

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 197
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x10

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 198
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x18

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 199
    return-void
.end method

.method public addU32(Landroid/renderscript/Long2;)V
    .locals 2
    .param p1, "v"    # Landroid/renderscript/Long2;

    .prologue
    .line 354
    iget-wide v0, p1, Landroid/renderscript/Long2;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU32(J)V

    .line 355
    iget-wide v0, p1, Landroid/renderscript/Long2;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU32(J)V

    .line 356
    return-void
.end method

.method public addU32(Landroid/renderscript/Long3;)V
    .locals 2
    .param p1, "v"    # Landroid/renderscript/Long3;

    .prologue
    .line 358
    iget-wide v0, p1, Landroid/renderscript/Long3;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU32(J)V

    .line 359
    iget-wide v0, p1, Landroid/renderscript/Long3;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU32(J)V

    .line 360
    iget-wide v0, p1, Landroid/renderscript/Long3;->z:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU32(J)V

    .line 361
    return-void
.end method

.method public addU32(Landroid/renderscript/Long4;)V
    .locals 2
    .param p1, "v"    # Landroid/renderscript/Long4;

    .prologue
    .line 363
    iget-wide v0, p1, Landroid/renderscript/Long4;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU32(J)V

    .line 364
    iget-wide v0, p1, Landroid/renderscript/Long4;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU32(J)V

    .line 365
    iget-wide v0, p1, Landroid/renderscript/Long4;->z:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU32(J)V

    .line 366
    iget-wide v0, p1, Landroid/renderscript/Long4;->w:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU32(J)V

    .line 367
    return-void
.end method

.method public addU64(J)V
    .locals 7
    .param p1, "v"    # J

    .prologue
    const/16 v6, 0x8

    const-wide/16 v4, 0xff

    .line 202
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 203
    const-string/jumbo v0, "rs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FieldPacker.addU64( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Saving value out of range for type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_0
    invoke-virtual {p0, v6}, Landroid/renderscript/FieldPacker;->align(I)V

    .line 207
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    and-long v2, p1, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 208
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    shr-long v2, p1, v6

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 209
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x10

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 210
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x18

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 211
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x20

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 212
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x28

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 213
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x30

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 214
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x38

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 215
    return-void
.end method

.method public addU64(Landroid/renderscript/Long2;)V
    .locals 2
    .param p1, "v"    # Landroid/renderscript/Long2;

    .prologue
    .line 386
    iget-wide v0, p1, Landroid/renderscript/Long2;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU64(J)V

    .line 387
    iget-wide v0, p1, Landroid/renderscript/Long2;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU64(J)V

    .line 388
    return-void
.end method

.method public addU64(Landroid/renderscript/Long3;)V
    .locals 2
    .param p1, "v"    # Landroid/renderscript/Long3;

    .prologue
    .line 390
    iget-wide v0, p1, Landroid/renderscript/Long3;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU64(J)V

    .line 391
    iget-wide v0, p1, Landroid/renderscript/Long3;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU64(J)V

    .line 392
    iget-wide v0, p1, Landroid/renderscript/Long3;->z:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU64(J)V

    .line 393
    return-void
.end method

.method public addU64(Landroid/renderscript/Long4;)V
    .locals 2
    .param p1, "v"    # Landroid/renderscript/Long4;

    .prologue
    .line 395
    iget-wide v0, p1, Landroid/renderscript/Long4;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU64(J)V

    .line 396
    iget-wide v0, p1, Landroid/renderscript/Long4;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU64(J)V

    .line 397
    iget-wide v0, p1, Landroid/renderscript/Long4;->z:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU64(J)V

    .line 398
    iget-wide v0, p1, Landroid/renderscript/Long4;->w:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU64(J)V

    .line 399
    return-void
.end method

.method public addU8(Landroid/renderscript/Short2;)V
    .locals 1
    .param p1, "v"    # Landroid/renderscript/Short2;

    .prologue
    .line 290
    iget-short v0, p1, Landroid/renderscript/Short2;->x:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU8(S)V

    .line 291
    iget-short v0, p1, Landroid/renderscript/Short2;->y:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU8(S)V

    .line 292
    return-void
.end method

.method public addU8(Landroid/renderscript/Short3;)V
    .locals 1
    .param p1, "v"    # Landroid/renderscript/Short3;

    .prologue
    .line 294
    iget-short v0, p1, Landroid/renderscript/Short3;->x:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU8(S)V

    .line 295
    iget-short v0, p1, Landroid/renderscript/Short3;->y:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU8(S)V

    .line 296
    iget-short v0, p1, Landroid/renderscript/Short3;->z:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU8(S)V

    .line 297
    return-void
.end method

.method public addU8(Landroid/renderscript/Short4;)V
    .locals 1
    .param p1, "v"    # Landroid/renderscript/Short4;

    .prologue
    .line 299
    iget-short v0, p1, Landroid/renderscript/Short4;->x:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU8(S)V

    .line 300
    iget-short v0, p1, Landroid/renderscript/Short4;->y:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU8(S)V

    .line 301
    iget-short v0, p1, Landroid/renderscript/Short4;->z:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU8(S)V

    .line 302
    iget-short v0, p1, Landroid/renderscript/Short4;->w:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU8(S)V

    .line 303
    return-void
.end method

.method public addU8(S)V
    .locals 3
    .param p1, "v"    # S

    .prologue
    .line 172
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    .line 173
    :cond_0
    const-string/jumbo v0, "rs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FieldPacker.addU8( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Saving value out of range for type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_1
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 177
    return-void
.end method

.method public align(I)V
    .locals 3
    .param p1, "v"    # I

    .prologue
    .line 47
    if-lez p1, :cond_0

    add-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p1

    if-eqz v0, :cond_1

    .line 48
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "argument must be a non-negative non-zero power of 2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_1
    :goto_0
    iget v0, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 52
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mAlignment:Ljava/util/BitSet;

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->flip(I)V

    .line 53
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    goto :goto_0

    .line 55
    :cond_2
    return-void
.end method

.method public final getData()[B
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    iput v0, p0, Landroid/renderscript/FieldPacker;->mPos:I

    .line 77
    return-void
.end method

.method public reset(I)V
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 79
    if-ltz p1, :cond_0

    iget v0, p0, Landroid/renderscript/FieldPacker;->mLen:I

    if-lt p1, v0, :cond_1

    .line 80
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "out of range argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1
    iput p1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    .line 83
    return-void
.end method

.method public skip(I)V
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 86
    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int v0, v1, p1

    .line 87
    .local v0, "res":I
    if-ltz v0, :cond_0

    iget v1, p0, Landroid/renderscript/FieldPacker;->mLen:I

    if-le v0, v1, :cond_1

    .line 88
    :cond_0
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "out of range argument: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    :cond_1
    iput v0, p0, Landroid/renderscript/FieldPacker;->mPos:I

    .line 91
    return-void
.end method

.method public subBoolean()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 583
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI8()B

    move-result v0

    .line 584
    .local v0, "v":B
    if-ne v0, v1, :cond_0

    .line 587
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public subByte2()Landroid/renderscript/Byte2;
    .locals 2

    .prologue
    .line 447
    new-instance v0, Landroid/renderscript/Byte2;

    invoke-direct {v0}, Landroid/renderscript/Byte2;-><init>()V

    .line 448
    .local v0, "v":Landroid/renderscript/Byte2;
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI8()B

    move-result v1

    iput-byte v1, v0, Landroid/renderscript/Byte2;->y:B

    .line 449
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI8()B

    move-result v1

    iput-byte v1, v0, Landroid/renderscript/Byte2;->x:B

    .line 450
    return-object v0
.end method

.method public subByte3()Landroid/renderscript/Byte3;
    .locals 2

    .prologue
    .line 453
    new-instance v0, Landroid/renderscript/Byte3;

    invoke-direct {v0}, Landroid/renderscript/Byte3;-><init>()V

    .line 454
    .local v0, "v":Landroid/renderscript/Byte3;
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI8()B

    move-result v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->z:B

    .line 455
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI8()B

    move-result v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->y:B

    .line 456
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI8()B

    move-result v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->x:B

    .line 457
    return-object v0
.end method

.method public subByte4()Landroid/renderscript/Byte4;
    .locals 2

    .prologue
    .line 460
    new-instance v0, Landroid/renderscript/Byte4;

    invoke-direct {v0}, Landroid/renderscript/Byte4;-><init>()V

    .line 461
    .local v0, "v":Landroid/renderscript/Byte4;
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI8()B

    move-result v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->w:B

    .line 462
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI8()B

    move-result v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->z:B

    .line 463
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI8()B

    move-result v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->y:B

    .line 464
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI8()B

    move-result v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->x:B

    .line 465
    return-object v0
.end method

.method public subDouble2()Landroid/renderscript/Double2;
    .locals 3

    .prologue
    .line 425
    new-instance v0, Landroid/renderscript/Double2;

    invoke-direct {v0}, Landroid/renderscript/Double2;-><init>()V

    .line 426
    .local v0, "v":Landroid/renderscript/Double2;
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF64()D

    move-result-wide v1

    iput-wide v1, v0, Landroid/renderscript/Double2;->y:D

    .line 427
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF64()D

    move-result-wide v1

    iput-wide v1, v0, Landroid/renderscript/Double2;->x:D

    .line 428
    return-object v0
.end method

.method public subDouble3()Landroid/renderscript/Double3;
    .locals 3

    .prologue
    .line 431
    new-instance v0, Landroid/renderscript/Double3;

    invoke-direct {v0}, Landroid/renderscript/Double3;-><init>()V

    .line 432
    .local v0, "v":Landroid/renderscript/Double3;
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF64()D

    move-result-wide v1

    iput-wide v1, v0, Landroid/renderscript/Double3;->z:D

    .line 433
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF64()D

    move-result-wide v1

    iput-wide v1, v0, Landroid/renderscript/Double3;->y:D

    .line 434
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF64()D

    move-result-wide v1

    iput-wide v1, v0, Landroid/renderscript/Double3;->x:D

    .line 435
    return-object v0
.end method

.method public subDouble4()Landroid/renderscript/Double4;
    .locals 3

    .prologue
    .line 438
    new-instance v0, Landroid/renderscript/Double4;

    invoke-direct {v0}, Landroid/renderscript/Double4;-><init>()V

    .line 439
    .local v0, "v":Landroid/renderscript/Double4;
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF64()D

    move-result-wide v1

    iput-wide v1, v0, Landroid/renderscript/Double4;->w:D

    .line 440
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF64()D

    move-result-wide v1

    iput-wide v1, v0, Landroid/renderscript/Double4;->z:D

    .line 441
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF64()D

    move-result-wide v1

    iput-wide v1, v0, Landroid/renderscript/Double4;->y:D

    .line 442
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF64()D

    move-result-wide v1

    iput-wide v1, v0, Landroid/renderscript/Double4;->x:D

    .line 443
    return-object v0
.end method

.method public subF32()F
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public subF64()D
    .locals 2

    .prologue
    .line 230
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public subFloat2()Landroid/renderscript/Float2;
    .locals 2

    .prologue
    .line 403
    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    .line 404
    .local v0, "v":Landroid/renderscript/Float2;
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    move-result v1

    iput v1, v0, Landroid/renderscript/Float2;->y:F

    .line 405
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    move-result v1

    iput v1, v0, Landroid/renderscript/Float2;->x:F

    .line 406
    return-object v0
.end method

.method public subFloat3()Landroid/renderscript/Float3;
    .locals 2

    .prologue
    .line 409
    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    .line 410
    .local v0, "v":Landroid/renderscript/Float3;
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    move-result v1

    iput v1, v0, Landroid/renderscript/Float3;->z:F

    .line 411
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    move-result v1

    iput v1, v0, Landroid/renderscript/Float3;->y:F

    .line 412
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    move-result v1

    iput v1, v0, Landroid/renderscript/Float3;->x:F

    .line 413
    return-object v0
.end method

.method public subFloat4()Landroid/renderscript/Float4;
    .locals 2

    .prologue
    .line 416
    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    .line 417
    .local v0, "v":Landroid/renderscript/Float4;
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    move-result v1

    iput v1, v0, Landroid/renderscript/Float4;->w:F

    .line 418
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    move-result v1

    iput v1, v0, Landroid/renderscript/Float4;->z:F

    .line 419
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    move-result v1

    iput v1, v0, Landroid/renderscript/Float4;->y:F

    .line 420
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    move-result v1

    iput v1, v0, Landroid/renderscript/Float4;->x:F

    .line 421
    return-object v0
.end method

.method public subI16()S
    .locals 3

    .prologue
    .line 109
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/renderscript/FieldPacker;->subalign(I)V

    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "v":S
    iget-object v1, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    int-to-short v0, v1

    .line 112
    iget-object v1, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    or-int/2addr v1, v0

    int-to-short v0, v1

    .line 113
    return v0
.end method

.method public subI32()I
    .locals 3

    .prologue
    .line 126
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/renderscript/FieldPacker;->subalign(I)V

    .line 127
    const/4 v0, 0x0

    .line 128
    .local v0, "v":I
    iget-object v1, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v0, v1, 0x18

    .line 129
    iget-object v1, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 130
    iget-object v1, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 131
    iget-object v1, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 132
    return v0
.end method

.method public subI64()J
    .locals 9

    .prologue
    const/16 v8, 0x8

    const-wide/16 v6, 0xff

    .line 149
    invoke-virtual {p0, v8}, Landroid/renderscript/FieldPacker;->subalign(I)V

    .line 150
    const-wide/16 v0, 0x0

    .line 151
    .local v0, "v":J
    const/4 v2, 0x0

    .line 152
    .local v2, "x":B
    iget-object v3, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v4, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/renderscript/FieldPacker;->mPos:I

    aget-byte v2, v3, v4

    .line 153
    int-to-long v3, v2

    and-long/2addr v3, v6

    const/16 v5, 0x38

    shl-long/2addr v3, v5

    or-long/2addr v0, v3

    .line 154
    iget-object v3, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v4, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/renderscript/FieldPacker;->mPos:I

    aget-byte v2, v3, v4

    .line 155
    int-to-long v3, v2

    and-long/2addr v3, v6

    const/16 v5, 0x30

    shl-long/2addr v3, v5

    or-long/2addr v0, v3

    .line 156
    iget-object v3, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v4, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/renderscript/FieldPacker;->mPos:I

    aget-byte v2, v3, v4

    .line 157
    int-to-long v3, v2

    and-long/2addr v3, v6

    const/16 v5, 0x28

    shl-long/2addr v3, v5

    or-long/2addr v0, v3

    .line 158
    iget-object v3, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v4, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/renderscript/FieldPacker;->mPos:I

    aget-byte v2, v3, v4

    .line 159
    int-to-long v3, v2

    and-long/2addr v3, v6

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    or-long/2addr v0, v3

    .line 160
    iget-object v3, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v4, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/renderscript/FieldPacker;->mPos:I

    aget-byte v2, v3, v4

    .line 161
    int-to-long v3, v2

    and-long/2addr v3, v6

    const/16 v5, 0x18

    shl-long/2addr v3, v5

    or-long/2addr v0, v3

    .line 162
    iget-object v3, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v4, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/renderscript/FieldPacker;->mPos:I

    aget-byte v2, v3, v4

    .line 163
    int-to-long v3, v2

    and-long/2addr v3, v6

    const/16 v5, 0x10

    shl-long/2addr v3, v5

    or-long/2addr v0, v3

    .line 164
    iget-object v3, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v4, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/renderscript/FieldPacker;->mPos:I

    aget-byte v2, v3, v4

    .line 165
    int-to-long v3, v2

    and-long/2addr v3, v6

    shl-long/2addr v3, v8

    or-long/2addr v0, v3

    .line 166
    iget-object v3, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v4, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/renderscript/FieldPacker;->mPos:I

    aget-byte v2, v3, v4

    .line 167
    int-to-long v3, v2

    and-long/2addr v3, v6

    or-long/2addr v0, v3

    .line 168
    return-wide v0
.end method

.method public subI8()B
    .locals 2

    .prologue
    .line 98
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->subalign(I)V

    .line 99
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public subInt2()Landroid/renderscript/Int2;
    .locals 2

    .prologue
    .line 491
    new-instance v0, Landroid/renderscript/Int2;

    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    .line 492
    .local v0, "v":Landroid/renderscript/Int2;
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI32()I

    move-result v1

    iput v1, v0, Landroid/renderscript/Int2;->y:I

    .line 493
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI32()I

    move-result v1

    iput v1, v0, Landroid/renderscript/Int2;->x:I

    .line 494
    return-object v0
.end method

.method public subInt3()Landroid/renderscript/Int3;
    .locals 2

    .prologue
    .line 497
    new-instance v0, Landroid/renderscript/Int3;

    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    .line 498
    .local v0, "v":Landroid/renderscript/Int3;
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI32()I

    move-result v1

    iput v1, v0, Landroid/renderscript/Int3;->z:I

    .line 499
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI32()I

    move-result v1

    iput v1, v0, Landroid/renderscript/Int3;->y:I

    .line 500
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI32()I

    move-result v1

    iput v1, v0, Landroid/renderscript/Int3;->x:I

    .line 501
    return-object v0
.end method

.method public subInt4()Landroid/renderscript/Int4;
    .locals 2

    .prologue
    .line 504
    new-instance v0, Landroid/renderscript/Int4;

    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    .line 505
    .local v0, "v":Landroid/renderscript/Int4;
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI32()I

    move-result v1

    iput v1, v0, Landroid/renderscript/Int4;->w:I

    .line 506
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI32()I

    move-result v1

    iput v1, v0, Landroid/renderscript/Int4;->z:I

    .line 507
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI32()I

    move-result v1

    iput v1, v0, Landroid/renderscript/Int4;->y:I

    .line 508
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI32()I

    move-result v1

    iput v1, v0, Landroid/renderscript/Int4;->x:I

    .line 509
    return-object v0
.end method

.method public subLong2()Landroid/renderscript/Long2;
    .locals 3

    .prologue
    .line 513
    new-instance v0, Landroid/renderscript/Long2;

    invoke-direct {v0}, Landroid/renderscript/Long2;-><init>()V

    .line 514
    .local v0, "v":Landroid/renderscript/Long2;
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI64()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/renderscript/Long2;->y:J

    .line 515
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI64()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/renderscript/Long2;->x:J

    .line 516
    return-object v0
.end method

.method public subLong3()Landroid/renderscript/Long3;
    .locals 3

    .prologue
    .line 519
    new-instance v0, Landroid/renderscript/Long3;

    invoke-direct {v0}, Landroid/renderscript/Long3;-><init>()V

    .line 520
    .local v0, "v":Landroid/renderscript/Long3;
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI64()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/renderscript/Long3;->z:J

    .line 521
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI64()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/renderscript/Long3;->y:J

    .line 522
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI64()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/renderscript/Long3;->x:J

    .line 523
    return-object v0
.end method

.method public subLong4()Landroid/renderscript/Long4;
    .locals 3

    .prologue
    .line 526
    new-instance v0, Landroid/renderscript/Long4;

    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    .line 527
    .local v0, "v":Landroid/renderscript/Long4;
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI64()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/renderscript/Long4;->w:J

    .line 528
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI64()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/renderscript/Long4;->z:J

    .line 529
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI64()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/renderscript/Long4;->y:J

    .line 530
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI64()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/renderscript/Long4;->x:J

    .line 531
    return-object v0
.end method

.method public subMatrix2f()Landroid/renderscript/Matrix2f;
    .locals 4

    .prologue
    .line 571
    new-instance v1, Landroid/renderscript/Matrix2f;

    invoke-direct {v1}, Landroid/renderscript/Matrix2f;-><init>()V

    .line 572
    .local v1, "v":Landroid/renderscript/Matrix2f;
    iget-object v2, v1, Landroid/renderscript/Matrix2f;->mMat:[F

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 573
    iget-object v2, v1, Landroid/renderscript/Matrix2f;->mMat:[F

    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    move-result v3

    aput v3, v2, v0

    .line 572
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 575
    :cond_0
    return-object v1
.end method

.method public subMatrix3f()Landroid/renderscript/Matrix3f;
    .locals 4

    .prologue
    .line 557
    new-instance v1, Landroid/renderscript/Matrix3f;

    invoke-direct {v1}, Landroid/renderscript/Matrix3f;-><init>()V

    .line 558
    .local v1, "v":Landroid/renderscript/Matrix3f;
    iget-object v2, v1, Landroid/renderscript/Matrix3f;->mMat:[F

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 559
    iget-object v2, v1, Landroid/renderscript/Matrix3f;->mMat:[F

    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    move-result v3

    aput v3, v2, v0

    .line 558
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 561
    :cond_0
    return-object v1
.end method

.method public subMatrix4f()Landroid/renderscript/Matrix4f;
    .locals 4

    .prologue
    .line 543
    new-instance v1, Landroid/renderscript/Matrix4f;

    invoke-direct {v1}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 544
    .local v1, "v":Landroid/renderscript/Matrix4f;
    iget-object v2, v1, Landroid/renderscript/Matrix4f;->mMat:[F

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 545
    iget-object v2, v1, Landroid/renderscript/Matrix4f;->mMat:[F

    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    move-result v3

    aput v3, v2, v0

    .line 544
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 547
    :cond_0
    return-object v1
.end method

.method public subShort2()Landroid/renderscript/Short2;
    .locals 2

    .prologue
    .line 469
    new-instance v0, Landroid/renderscript/Short2;

    invoke-direct {v0}, Landroid/renderscript/Short2;-><init>()V

    .line 470
    .local v0, "v":Landroid/renderscript/Short2;
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI16()S

    move-result v1

    iput-short v1, v0, Landroid/renderscript/Short2;->y:S

    .line 471
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI16()S

    move-result v1

    iput-short v1, v0, Landroid/renderscript/Short2;->x:S

    .line 472
    return-object v0
.end method

.method public subShort3()Landroid/renderscript/Short3;
    .locals 2

    .prologue
    .line 475
    new-instance v0, Landroid/renderscript/Short3;

    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    .line 476
    .local v0, "v":Landroid/renderscript/Short3;
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI16()S

    move-result v1

    iput-short v1, v0, Landroid/renderscript/Short3;->z:S

    .line 477
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI16()S

    move-result v1

    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    .line 478
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI16()S

    move-result v1

    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    .line 479
    return-object v0
.end method

.method public subShort4()Landroid/renderscript/Short4;
    .locals 2

    .prologue
    .line 482
    new-instance v0, Landroid/renderscript/Short4;

    invoke-direct {v0}, Landroid/renderscript/Short4;-><init>()V

    .line 483
    .local v0, "v":Landroid/renderscript/Short4;
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI16()S

    move-result v1

    iput-short v1, v0, Landroid/renderscript/Short4;->w:S

    .line 484
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI16()S

    move-result v1

    iput-short v1, v0, Landroid/renderscript/Short4;->z:S

    .line 485
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI16()S

    move-result v1

    iput-short v1, v0, Landroid/renderscript/Short4;->y:S

    .line 486
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI16()S

    move-result v1

    iput-short v1, v0, Landroid/renderscript/Short4;->x:S

    .line 487
    return-object v0
.end method

.method public subalign(I)V
    .locals 3
    .param p1, "v"    # I

    .prologue
    .line 58
    add-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "argument must be a non-negative non-zero power of 2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    :goto_0
    iget v0, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 63
    iget v0, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/renderscript/FieldPacker;->mPos:I

    goto :goto_0

    .line 66
    :cond_1
    iget v0, p0, Landroid/renderscript/FieldPacker;->mPos:I

    if-lez v0, :cond_2

    .line 67
    :goto_1
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mAlignment:Ljava/util/BitSet;

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 68
    iget v0, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/renderscript/FieldPacker;->mPos:I

    .line 69
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mAlignment:Ljava/util/BitSet;

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->flip(I)V

    goto :goto_1

    .line 73
    :cond_2
    return-void
.end method
