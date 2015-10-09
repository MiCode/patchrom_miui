.class public Landroid/content/pm/KeySet;
.super Ljava/lang/Object;
.source "KeySet.java"


# instance fields
.field private token:Landroid/os/Binder;


# direct methods
.method public constructor <init>(Landroid/os/Binder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/Binder;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Landroid/content/pm/KeySet;->token:Landroid/os/Binder;

    .line 29
    return-void
.end method


# virtual methods
.method getToken()Landroid/os/Binder;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Landroid/content/pm/KeySet;->token:Landroid/os/Binder;

    return-object v0
.end method
