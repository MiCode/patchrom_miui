.class Lcom/android/settings/AccessControlSetApp$2;
.super Ljava/lang/Object;
.source "AccessControlSetApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AccessControlSetApp;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AccessControlSetApp;


# direct methods
.method constructor <init>(Lcom/android/settings/AccessControlSetApp;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/settings/AccessControlSetApp$2;->this$0:Lcom/android/settings/AccessControlSetApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/settings/AccessControlSetApp$2;->this$0:Lcom/android/settings/AccessControlSetApp;

    #calls: Lcom/android/settings/AccessControlSetApp;->initCreate()V
    invoke-static {v0}, Lcom/android/settings/AccessControlSetApp;->access$100(Lcom/android/settings/AccessControlSetApp;)V

    .line 119
    return-void
.end method
