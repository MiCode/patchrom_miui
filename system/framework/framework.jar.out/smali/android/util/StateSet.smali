.class public Landroid/util/StateSet;
.super Ljava/lang/Object;
.source "StateSet.java"


# static fields
.field public static final NOTHING:[I

.field public static final WILD_CARD:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    new-array v0, v1, [I

    sput-object v0, Landroid/util/StateSet;->WILD_CARD:[I

    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v1, v0, v1

    sput-object v0, Landroid/util/StateSet;->NOTHING:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump([I)Ljava/lang/String;
    .locals 5
    .param p0, "states"    # [I

    .prologue
    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .local v2, "sb":Ljava/lang/StringBuilder;
    array-length v0, p0

    .line 157
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_5

    .line 158
    aget v3, p0, v1

    sget v4, Lcom/android/internal/R$attr;->state_window_focused:I

    if-ne v3, v4, :cond_1

    .line 159
    const-string v3, "W "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    :cond_1
    aget v3, p0, v1

    sget v4, Lcom/android/internal/R$attr;->state_pressed:I

    if-ne v3, v4, :cond_2

    .line 161
    const-string v3, "P "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 162
    :cond_2
    aget v3, p0, v1

    sget v4, Lcom/android/internal/R$attr;->state_selected:I

    if-ne v3, v4, :cond_3

    .line 163
    const-string v3, "S "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 164
    :cond_3
    aget v3, p0, v1

    sget v4, Lcom/android/internal/R$attr;->state_focused:I

    if-ne v3, v4, :cond_4

    .line 165
    const-string v3, "F "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 166
    :cond_4
    aget v3, p0, v1

    sget v4, Lcom/android/internal/R$attr;->state_enabled:I

    if-ne v3, v4, :cond_0

    .line 167
    const-string v3, "E "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 171
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static isWildCard([I)Z
    .locals 2
    .param p0, "stateSetOrSpec"    # [I

    .prologue
    const/4 v0, 0x0

    .line 50
    array-length v1, p0

    if-eqz v1, :cond_0

    aget v1, p0, v0

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static stateSetMatches([II)Z
    .locals 6
    .param p0, "stateSpec"    # [I
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 121
    array-length v1, p0

    .line 122
    .local v1, "stateSpecSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 123
    aget v2, p0, v0

    .line 124
    .local v2, "stateSpecState":I
    if-nez v2, :cond_1

    .line 140
    .end local v2    # "stateSpecState":I
    :cond_0
    :goto_1
    return v3

    .line 128
    .restart local v2    # "stateSpecState":I
    :cond_1
    if-lez v2, :cond_2

    .line 129
    if-eq p1, v2, :cond_3

    move v3, v4

    .line 130
    goto :goto_1

    .line 134
    :cond_2
    neg-int v5, v2

    if-ne p1, v5, :cond_3

    move v3, v4

    .line 136
    goto :goto_1

    .line 122
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static stateSetMatches([I[I)Z
    .locals 11
    .param p0, "stateSpec"    # [I
    .param p1, "stateSet"    # [I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 61
    if-nez p1, :cond_2

    .line 62
    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/util/StateSet;->isWildCard([I)Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    move v8, v9

    .line 110
    :cond_1
    :goto_0
    return v8

    .line 64
    :cond_2
    array-length v6, p0

    .line 65
    .local v6, "stateSpecSize":I
    array-length v5, p1

    .line 66
    .local v5, "stateSetSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v6, :cond_9

    .line 67
    aget v7, p0, v1

    .line 68
    .local v7, "stateSpecState":I
    if-nez v7, :cond_3

    move v8, v9

    .line 70
    goto :goto_0

    .line 73
    :cond_3
    if-lez v7, :cond_6

    .line 74
    const/4 v3, 0x1

    .line 80
    .local v3, "mustMatch":Z
    :goto_2
    const/4 v0, 0x0

    .line 81
    .local v0, "found":Z
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_3
    if-ge v2, v5, :cond_4

    .line 82
    aget v4, p1, v2

    .line 83
    .local v4, "state":I
    if-nez v4, :cond_7

    .line 85
    if-nez v3, :cond_1

    .line 104
    .end local v4    # "state":I
    :cond_4
    :goto_4
    if-eqz v3, :cond_5

    if-eqz v0, :cond_1

    .line 66
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 77
    .end local v0    # "found":Z
    .end local v2    # "j":I
    .end local v3    # "mustMatch":Z
    :cond_6
    const/4 v3, 0x0

    .line 78
    .restart local v3    # "mustMatch":Z
    neg-int v7, v7

    goto :goto_2

    .line 93
    .restart local v0    # "found":Z
    .restart local v2    # "j":I
    .restart local v4    # "state":I
    :cond_7
    if-ne v4, v7, :cond_8

    .line 94
    if-eqz v3, :cond_1

    .line 95
    const/4 v0, 0x1

    .line 97
    goto :goto_4

    .line 81
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v0    # "found":Z
    .end local v2    # "j":I
    .end local v3    # "mustMatch":Z
    .end local v4    # "state":I
    .end local v7    # "stateSpecState":I
    :cond_9
    move v8, v9

    .line 110
    goto :goto_0
.end method

.method public static trimStateSet([II)[I
    .locals 3
    .param p0, "states"    # [I
    .param p1, "newSize"    # I

    .prologue
    const/4 v2, 0x0

    .line 144
    array-length v1, p0

    if-ne v1, p1, :cond_0

    .line 150
    .end local p0    # "states":[I
    :goto_0
    return-object p0

    .line 148
    .restart local p0    # "states":[I
    :cond_0
    new-array v0, p1, [I

    .line 149
    .local v0, "trimmedStates":[I
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    .line 150
    goto :goto_0
.end method
