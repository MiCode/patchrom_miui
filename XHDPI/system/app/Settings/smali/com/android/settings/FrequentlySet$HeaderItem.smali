.class Lcom/android/settings/FrequentlySet$HeaderItem;
.super Ljava/lang/Object;
.source "FrequentlySet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/FrequentlySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderItem"
.end annotation


# instance fields
.field headerFileId:I

.field headerId:I

.field isDefaultKey:Z

.field key:Ljava/lang/String;

.field searchKeyId:I

.field showId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIZ)V
    .locals 0
    .parameter "key"
    .parameter "headerFileId"
    .parameter "headerId"
    .parameter "showId"
    .parameter "searchKeyId"
    .parameter "isDefaultKey"

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Lcom/android/settings/FrequentlySet$HeaderItem;->key:Ljava/lang/String;

    .line 162
    iput p2, p0, Lcom/android/settings/FrequentlySet$HeaderItem;->headerFileId:I

    .line 163
    iput p3, p0, Lcom/android/settings/FrequentlySet$HeaderItem;->headerId:I

    .line 164
    iput p4, p0, Lcom/android/settings/FrequentlySet$HeaderItem;->showId:I

    .line 165
    iput p5, p0, Lcom/android/settings/FrequentlySet$HeaderItem;->searchKeyId:I

    .line 166
    iput-boolean p6, p0, Lcom/android/settings/FrequentlySet$HeaderItem;->isDefaultKey:Z

    .line 167
    return-void
.end method
