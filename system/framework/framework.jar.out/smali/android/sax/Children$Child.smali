.class Landroid/sax/Children$Child;
.super Landroid/sax/Element;
.source "Children.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sax/Children;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Child"
.end annotation


# instance fields
.field final hash:I

.field next:Landroid/sax/Children$Child;


# direct methods
.method constructor <init>(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "parent"    # Landroid/sax/Element;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "depth"    # I
    .param p5, "hash"    # I

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/sax/Element;-><init>(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/String;I)V

    .line 94
    iput p5, p0, Landroid/sax/Children$Child;->hash:I

    .line 95
    return-void
.end method
