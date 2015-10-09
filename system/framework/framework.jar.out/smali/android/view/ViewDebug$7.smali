.class final Landroid/view/ViewDebug$7;
.super Ljava/lang/Object;
.source "ViewDebug.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewDebug;->callMethodOnAppropriateTheadBlocking(Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$method:Ljava/lang/reflect/Method;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1010
    iput-object p1, p0, Landroid/view/ViewDebug$7;->val$method:Ljava/lang/reflect/Method;

    iput-object p2, p0, Landroid/view/ViewDebug$7;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 1013
    iget-object v1, p0, Landroid/view/ViewDebug$7;->val$method:Ljava/lang/reflect/Method;

    iget-object v2, p0, Landroid/view/ViewDebug$7;->val$view:Landroid/view/View;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
