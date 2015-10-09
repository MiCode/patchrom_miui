.class Landroid/text/Layout$Ellipsizer;
.super Ljava/lang/Object;
.source "Layout.java"

# interfaces
.implements Landroid/text/GetChars;
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/Layout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Ellipsizer"
.end annotation


# instance fields
.field mLayout:Landroid/text/Layout;

.field mMethod:Landroid/text/TextUtils$TruncateAt;

.field mText:Ljava/lang/CharSequence;

.field mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 1816
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1817
    iput-object p1, p0, Landroid/text/Layout$Ellipsizer;->mText:Ljava/lang/CharSequence;

    .line 1818
    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 4
    .param p1, "off"    # I

    .prologue
    const/4 v3, 0x0

    .line 1821
    const/4 v2, 0x1

    invoke-static {v2}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v0

    .line 1822
    .local v0, "buf":[C
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2, v0, v3}, Landroid/text/Layout$Ellipsizer;->getChars(II[CI)V

    .line 1823
    aget-char v1, v0, v3

    .line 1825
    .local v1, "ret":C
    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    .line 1826
    return v1
.end method

.method public getChars(II[CI)V
    .locals 9
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # [C
    .param p4, "destoff"    # I

    .prologue
    .line 1830
    iget-object v0, p0, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    .line 1831
    .local v7, "line1":I
    iget-object v0, p0, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    .line 1833
    .local v8, "line2":I
    iget-object v0, p0, Landroid/text/Layout$Ellipsizer;->mText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 1835
    move v3, v7

    .local v3, "i":I
    :goto_0
    if-gt v3, v8, :cond_0

    .line 1836
    iget-object v0, p0, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    iget-object v6, p0, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    move v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    # invokes: Landroid/text/Layout;->ellipsize(III[CILandroid/text/TextUtils$TruncateAt;)V
    invoke-static/range {v0 .. v6}, Landroid/text/Layout;->access$000(Landroid/text/Layout;III[CILandroid/text/TextUtils$TruncateAt;)V

    .line 1835
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1838
    :cond_0
    return-void
.end method

.method public length()I
    .locals 1

    .prologue
    .line 1841
    iget-object v0, p0, Landroid/text/Layout$Ellipsizer;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 1845
    sub-int v1, p2, p1

    new-array v0, v1, [C

    .line 1846
    .local v0, "s":[C
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/text/Layout$Ellipsizer;->getChars(II[CI)V

    .line 1847
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1852
    invoke-virtual {p0}, Landroid/text/Layout$Ellipsizer;->length()I

    move-result v1

    new-array v0, v1, [C

    .line 1853
    .local v0, "s":[C
    invoke-virtual {p0}, Landroid/text/Layout$Ellipsizer;->length()I

    move-result v1

    invoke-virtual {p0, v2, v1, v0, v2}, Landroid/text/Layout$Ellipsizer;->getChars(II[CI)V

    .line 1854
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method
