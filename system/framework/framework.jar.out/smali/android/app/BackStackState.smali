.class final Landroid/app/BackStackState;
.super Ljava/lang/Object;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/BackStackState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mBreadCrumbShortTitleRes:I

.field final mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

.field final mBreadCrumbTitleRes:I

.field final mBreadCrumbTitleText:Ljava/lang/CharSequence;

.field final mIndex:I

.field final mName:Ljava/lang/String;

.field final mOps:[I

.field final mTransition:I

.field final mTransitionStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 164
    new-instance v0, Landroid/app/BackStackState$1;

    invoke-direct {v0}, Landroid/app/BackStackState$1;-><init>()V

    sput-object v0, Landroid/app/BackStackState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/app/FragmentManagerImpl;Landroid/app/BackStackRecord;)V
    .locals 8
    .param p1, "fm"    # Landroid/app/FragmentManagerImpl;
    .param p2, "bse"    # Landroid/app/BackStackRecord;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v2, 0x0

    .line 43
    .local v2, "numRemoved":I
    iget-object v3, p2, Landroid/app/BackStackRecord;->mHead:Landroid/app/BackStackRecord$Op;

    .line 44
    .local v3, "op":Landroid/app/BackStackRecord$Op;
    :goto_0
    if-eqz v3, :cond_1

    .line 45
    iget-object v6, v3, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    iget-object v6, v3, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v2, v6

    .line 46
    :cond_0
    iget-object v3, v3, Landroid/app/BackStackRecord$Op;->next:Landroid/app/BackStackRecord$Op;

    goto :goto_0

    .line 48
    :cond_1
    iget v6, p2, Landroid/app/BackStackRecord;->mNumOp:I

    mul-int/lit8 v6, v6, 0x7

    add-int/2addr v6, v2

    new-array v6, v6, [I

    iput-object v6, p0, Landroid/app/BackStackState;->mOps:[I

    .line 50
    iget-boolean v6, p2, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    if-nez v6, :cond_2

    .line 51
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Not on back stack"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 54
    :cond_2
    iget-object v3, p2, Landroid/app/BackStackRecord;->mHead:Landroid/app/BackStackRecord$Op;

    .line 55
    const/4 v4, 0x0

    .local v4, "pos":I
    move v5, v4

    .line 56
    .end local v4    # "pos":I
    .local v5, "pos":I
    :goto_1
    if-eqz v3, :cond_6

    .line 57
    iget-object v6, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    iget v7, v3, Landroid/app/BackStackRecord$Op;->cmd:I

    aput v7, v6, v5

    .line 58
    iget-object v7, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    iget-object v6, v3, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    if-eqz v6, :cond_3

    iget-object v6, v3, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    iget v6, v6, Landroid/app/Fragment;->mIndex:I

    :goto_2
    aput v6, v7, v4

    .line 59
    iget-object v6, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    iget v7, v3, Landroid/app/BackStackRecord$Op;->enterAnim:I

    aput v7, v6, v5

    .line 60
    iget-object v6, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    iget v7, v3, Landroid/app/BackStackRecord$Op;->exitAnim:I

    aput v7, v6, v4

    .line 61
    iget-object v6, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    iget v7, v3, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    aput v7, v6, v5

    .line 62
    iget-object v6, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    iget v7, v3, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    aput v7, v6, v4

    .line 63
    iget-object v6, v3, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-eqz v6, :cond_5

    .line 64
    iget-object v6, v3, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 65
    .local v0, "N":I
    iget-object v6, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    aput v0, v6, v5

    .line 66
    const/4 v1, 0x0

    .local v1, "i":I
    move v5, v4

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    :goto_3
    if-ge v1, v0, :cond_4

    .line 67
    iget-object v7, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    iget-object v6, v3, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Fragment;

    iget v6, v6, Landroid/app/Fragment;->mIndex:I

    aput v6, v7, v5

    .line 66
    add-int/lit8 v1, v1, 0x1

    move v5, v4

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    goto :goto_3

    .line 58
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_3
    const/4 v6, -0x1

    goto :goto_2

    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_4
    move v4, v5

    .line 72
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    :goto_4
    iget-object v3, v3, Landroid/app/BackStackRecord$Op;->next:Landroid/app/BackStackRecord$Op;

    move v5, v4

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    goto :goto_1

    .line 70
    :cond_5
    iget-object v6, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    const/4 v7, 0x0

    aput v7, v6, v5

    goto :goto_4

    .line 74
    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    :cond_6
    iget v6, p2, Landroid/app/BackStackRecord;->mTransition:I

    iput v6, p0, Landroid/app/BackStackState;->mTransition:I

    .line 75
    iget v6, p2, Landroid/app/BackStackRecord;->mTransitionStyle:I

    iput v6, p0, Landroid/app/BackStackState;->mTransitionStyle:I

    .line 76
    iget-object v6, p2, Landroid/app/BackStackRecord;->mName:Ljava/lang/String;

    iput-object v6, p0, Landroid/app/BackStackState;->mName:Ljava/lang/String;

    .line 77
    iget v6, p2, Landroid/app/BackStackRecord;->mIndex:I

    iput v6, p0, Landroid/app/BackStackState;->mIndex:I

    .line 78
    iget v6, p2, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    iput v6, p0, Landroid/app/BackStackState;->mBreadCrumbTitleRes:I

    .line 79
    iget-object v6, p2, Landroid/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    iput-object v6, p0, Landroid/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 80
    iget v6, p2, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    iput v6, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleRes:I

    .line 81
    iget-object v6, p2, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    iput-object v6, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/app/BackStackState;->mOps:[I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/BackStackState;->mTransition:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/BackStackState;->mTransitionStyle:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/BackStackState;->mName:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/BackStackState;->mIndex:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/BackStackState;->mBreadCrumbTitleRes:I

    .line 91
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleRes:I

    .line 93
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 94
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public instantiate(Landroid/app/FragmentManagerImpl;)Landroid/app/BackStackRecord;
    .locals 14
    .param p1, "fm"    # Landroid/app/FragmentManagerImpl;

    .prologue
    const/4 v13, 0x1

    .line 97
    new-instance v1, Landroid/app/BackStackRecord;

    invoke-direct {v1, p1}, Landroid/app/BackStackRecord;-><init>(Landroid/app/FragmentManagerImpl;)V

    .line 98
    .local v1, "bse":Landroid/app/BackStackRecord;
    const/4 v7, 0x0

    .line 99
    .local v7, "pos":I
    const/4 v5, 0x0

    .line 100
    .local v5, "num":I
    :goto_0
    iget-object v10, p0, Landroid/app/BackStackState;->mOps:[I

    array-length v10, v10

    if-ge v7, v10, :cond_4

    .line 101
    new-instance v6, Landroid/app/BackStackRecord$Op;

    invoke-direct {v6}, Landroid/app/BackStackRecord$Op;-><init>()V

    .line 102
    .local v6, "op":Landroid/app/BackStackRecord$Op;
    iget-object v10, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "pos":I
    .local v8, "pos":I
    aget v10, v10, v7

    iput v10, v6, Landroid/app/BackStackRecord$Op;->cmd:I

    .line 103
    sget-boolean v10, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v10, :cond_0

    const-string v10, "FragmentManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Instantiate "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " op #"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " base fragment #"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/app/BackStackState;->mOps:[I

    aget v12, v12, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    iget-object v10, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    aget v3, v10, v8

    .line 106
    .local v3, "findex":I
    if-ltz v3, :cond_2

    .line 107
    iget-object v10, p1, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    .line 108
    .local v2, "f":Landroid/app/Fragment;
    iput-object v2, v6, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 112
    .end local v2    # "f":Landroid/app/Fragment;
    :goto_1
    iget-object v10, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "pos":I
    .restart local v8    # "pos":I
    aget v10, v10, v7

    iput v10, v6, Landroid/app/BackStackRecord$Op;->enterAnim:I

    .line 113
    iget-object v10, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    aget v10, v10, v8

    iput v10, v6, Landroid/app/BackStackRecord$Op;->exitAnim:I

    .line 114
    iget-object v10, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "pos":I
    .restart local v8    # "pos":I
    aget v10, v10, v7

    iput v10, v6, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    .line 115
    iget-object v10, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    aget v10, v10, v8

    iput v10, v6, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    .line 116
    iget-object v10, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "pos":I
    .restart local v8    # "pos":I
    aget v0, v10, v7

    .line 117
    .local v0, "N":I
    if-lez v0, :cond_3

    .line 118
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v10, v6, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    .line 119
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v0, :cond_3

    .line 120
    sget-boolean v10, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v10, :cond_1

    const-string v10, "FragmentManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Instantiate "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " set remove fragment #"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/app/BackStackState;->mOps:[I

    aget v12, v12, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_1
    iget-object v10, p1, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    iget-object v11, p0, Landroid/app/BackStackState;->mOps:[I

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    aget v11, v11, v8

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/Fragment;

    .line 123
    .local v9, "r":Landroid/app/Fragment;
    iget-object v10, v6, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    add-int/lit8 v4, v4, 0x1

    move v8, v7

    .end local v7    # "pos":I
    .restart local v8    # "pos":I
    goto :goto_2

    .line 110
    .end local v0    # "N":I
    .end local v4    # "i":I
    .end local v8    # "pos":I
    .end local v9    # "r":Landroid/app/Fragment;
    .restart local v7    # "pos":I
    :cond_2
    const/4 v10, 0x0

    iput-object v10, v6, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    goto :goto_1

    .end local v7    # "pos":I
    .restart local v0    # "N":I
    .restart local v8    # "pos":I
    :cond_3
    move v7, v8

    .line 127
    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    iget v10, v6, Landroid/app/BackStackRecord$Op;->enterAnim:I

    iput v10, v1, Landroid/app/BackStackRecord;->mEnterAnim:I

    .line 128
    iget v10, v6, Landroid/app/BackStackRecord$Op;->exitAnim:I

    iput v10, v1, Landroid/app/BackStackRecord;->mExitAnim:I

    .line 129
    iget v10, v6, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    iput v10, v1, Landroid/app/BackStackRecord;->mPopEnterAnim:I

    .line 130
    iget v10, v6, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    iput v10, v1, Landroid/app/BackStackRecord;->mPopExitAnim:I

    .line 132
    invoke-virtual {v1, v6}, Landroid/app/BackStackRecord;->addOp(Landroid/app/BackStackRecord$Op;)V

    .line 133
    add-int/lit8 v5, v5, 0x1

    .line 134
    goto/16 :goto_0

    .line 135
    .end local v0    # "N":I
    .end local v3    # "findex":I
    .end local v6    # "op":Landroid/app/BackStackRecord$Op;
    :cond_4
    iget v10, p0, Landroid/app/BackStackState;->mTransition:I

    iput v10, v1, Landroid/app/BackStackRecord;->mTransition:I

    .line 136
    iget v10, p0, Landroid/app/BackStackState;->mTransitionStyle:I

    iput v10, v1, Landroid/app/BackStackRecord;->mTransitionStyle:I

    .line 137
    iget-object v10, p0, Landroid/app/BackStackState;->mName:Ljava/lang/String;

    iput-object v10, v1, Landroid/app/BackStackRecord;->mName:Ljava/lang/String;

    .line 138
    iget v10, p0, Landroid/app/BackStackState;->mIndex:I

    iput v10, v1, Landroid/app/BackStackRecord;->mIndex:I

    .line 139
    iput-boolean v13, v1, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    .line 140
    iget v10, p0, Landroid/app/BackStackState;->mBreadCrumbTitleRes:I

    iput v10, v1, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    .line 141
    iget-object v10, p0, Landroid/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    iput-object v10, v1, Landroid/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 142
    iget v10, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleRes:I

    iput v10, v1, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    .line 143
    iget-object v10, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    iput-object v10, v1, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 144
    invoke-virtual {v1, v13}, Landroid/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 145
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 153
    iget-object v0, p0, Landroid/app/BackStackState;->mOps:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 154
    iget v0, p0, Landroid/app/BackStackState;->mTransition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget v0, p0, Landroid/app/BackStackState;->mTransitionStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget-object v0, p0, Landroid/app/BackStackState;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget v0, p0, Landroid/app/BackStackState;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget v0, p0, Landroid/app/BackStackState;->mBreadCrumbTitleRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget-object v0, p0, Landroid/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 160
    iget v0, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget-object v0, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 162
    return-void
.end method
