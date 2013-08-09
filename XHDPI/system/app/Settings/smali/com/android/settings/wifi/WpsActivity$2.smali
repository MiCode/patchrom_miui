.class Lcom/android/settings/wifi/WpsActivity$2;
.super Ljava/lang/Object;
.source "WpsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WpsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WpsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WpsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/settings/wifi/WpsActivity$2;->this$0:Lcom/android/settings/wifi/WpsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/settings/wifi/WpsActivity$2;->this$0:Lcom/android/settings/wifi/WpsActivity;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WpsActivity;->finish()V

    .line 133
    return-void
.end method
