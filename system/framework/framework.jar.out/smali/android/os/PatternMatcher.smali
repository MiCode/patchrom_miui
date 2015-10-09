.class public Landroid/os/PatternMatcher;
.super Ljava/lang/Object;
.source "PatternMatcher.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/PatternMatcher;",
            ">;"
        }
    .end annotation
.end field

.field public static final PATTERN_LITERAL:I = 0x0

.field public static final PATTERN_PREFIX:I = 0x1

.field public static final PATTERN_SIMPLE_GLOB:I = 0x2


# instance fields
.field private final mPattern:Ljava/lang/String;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    new-instance v0, Landroid/os/PatternMatcher$1;

    invoke-direct {v0}, Landroid/os/PatternMatcher$1;-><init>()V

    sput-object v0, Landroid/os/PatternMatcher;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/PatternMatcher;->mType:I

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    .line 53
    iput p2, p0, Landroid/os/PatternMatcher;->mType:I

    .line 54
    return-void
.end method

.method static matchPattern(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 13
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "match"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    const/16 v12, 0x5c

    const/16 v11, 0x2a

    const/16 v10, 0x2e

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 110
    if-nez p1, :cond_1

    .line 195
    :cond_0
    :goto_0
    return v8

    .line 111
    :cond_1
    if-nez p2, :cond_2

    .line 112
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    goto :goto_0

    .line 113
    :cond_2
    if-ne p2, v7, :cond_3

    .line 114
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    goto :goto_0

    .line 115
    :cond_3
    const/4 v9, 0x2

    if-ne p2, v9, :cond_0

    .line 119
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 120
    .local v1, "NP":I
    if-gtz v1, :cond_5

    .line 121
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_4

    :goto_1
    move v8, v7

    goto :goto_0

    :cond_4
    move v7, v8

    goto :goto_1

    .line 123
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 124
    .local v0, "NM":I
    const/4 v5, 0x0

    .local v5, "ip":I
    const/4 v4, 0x0

    .line 125
    .local v4, "im":I
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 126
    .local v6, "nextChar":C
    :goto_2
    if-ge v5, v1, :cond_14

    if-ge v4, v0, :cond_14

    .line 127
    move v2, v6

    .line 128
    .local v2, "c":C
    add-int/lit8 v5, v5, 0x1

    .line 129
    if-ge v5, v1, :cond_7

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 130
    :goto_3
    if-ne v2, v12, :cond_8

    move v3, v7

    .line 131
    .local v3, "escaped":Z
    :goto_4
    if-eqz v3, :cond_6

    .line 132
    move v2, v6

    .line 133
    add-int/lit8 v5, v5, 0x1

    .line 134
    if-ge v5, v1, :cond_9

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 136
    :cond_6
    :goto_5
    if-ne v6, v11, :cond_12

    .line 137
    if-nez v3, :cond_f

    if-ne v2, v10, :cond_f

    .line 138
    add-int/lit8 v9, v1, -0x1

    if-lt v5, v9, :cond_a

    move v8, v7

    .line 141
    goto :goto_0

    .end local v3    # "escaped":Z
    :cond_7
    move v6, v8

    .line 129
    goto :goto_3

    :cond_8
    move v3, v8

    .line 130
    goto :goto_4

    .restart local v3    # "escaped":Z
    :cond_9
    move v6, v8

    .line 134
    goto :goto_5

    .line 143
    :cond_a
    add-int/lit8 v5, v5, 0x1

    .line 144
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 147
    if-ne v6, v12, :cond_b

    .line 148
    add-int/lit8 v5, v5, 0x1

    .line 149
    if-ge v5, v1, :cond_c

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 152
    :cond_b
    :goto_6
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v6, :cond_d

    .line 157
    :goto_7
    if-eq v4, v0, :cond_0

    .line 162
    add-int/lit8 v5, v5, 0x1

    .line 163
    if-ge v5, v1, :cond_e

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 164
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_c
    move v6, v8

    .line 149
    goto :goto_6

    .line 155
    :cond_d
    add-int/lit8 v4, v4, 0x1

    .line 156
    if-lt v4, v0, :cond_b

    goto :goto_7

    :cond_e
    move v6, v8

    .line 163
    goto :goto_8

    .line 168
    :cond_f
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v2, :cond_10

    .line 173
    :goto_9
    add-int/lit8 v5, v5, 0x1

    .line 174
    if-ge v5, v1, :cond_11

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :goto_a
    goto :goto_2

    .line 171
    :cond_10
    add-int/lit8 v4, v4, 0x1

    .line 172
    if-lt v4, v0, :cond_f

    goto :goto_9

    :cond_11
    move v6, v8

    .line 174
    goto :goto_a

    .line 177
    :cond_12
    if-eq v2, v10, :cond_13

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v2, :cond_0

    .line 178
    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 182
    .end local v2    # "c":C
    .end local v3    # "escaped":Z
    :cond_14
    if-lt v5, v1, :cond_15

    if-lt v4, v0, :cond_15

    move v8, v7

    .line 184
    goto/16 :goto_0

    .line 190
    :cond_15
    add-int/lit8 v9, v1, -0x2

    if-ne v5, v9, :cond_0

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v10, :cond_0

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v11, :cond_0

    move v8, v7

    .line 192
    goto/16 :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Landroid/os/PatternMatcher;->mType:I

    return v0
.end method

.method public match(Ljava/lang/String;)Z
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    iget v1, p0, Landroid/os/PatternMatcher;->mType:I

    invoke-static {v0, p1, v1}, Landroid/os/PatternMatcher;->matchPattern(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 69
    const-string v0, "? "

    .line 70
    .local v0, "type":Ljava/lang/String;
    iget v1, p0, Landroid/os/PatternMatcher;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 81
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PatternMatcher{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 72
    :pswitch_0
    const-string v0, "LITERAL: "

    .line 73
    goto :goto_0

    .line 75
    :pswitch_1
    const-string v0, "PREFIX: "

    .line 76
    goto :goto_0

    .line 78
    :pswitch_2
    const-string v0, "GLOB: "

    goto :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 89
    iget-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget v0, p0, Landroid/os/PatternMatcher;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    return-void
.end method
