.class Landroid/net/Uri$Part$EmptyPart;
.super Landroid/net/Uri$Part;
.source "Uri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Uri$Part;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyPart"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2081
    const/4 v0, 0x0

    invoke-direct {p0, p1, p1, v0}, Landroid/net/Uri$Part;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri$1;)V

    .line 2082
    return-void
.end method


# virtual methods
.method isEmpty()Z
    .locals 1

    .prologue
    .line 2086
    const/4 v0, 0x1

    return v0
.end method
