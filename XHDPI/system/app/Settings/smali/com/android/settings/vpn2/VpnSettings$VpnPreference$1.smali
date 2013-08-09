.class Lcom/android/settings/vpn2/VpnSettings$VpnPreference$1;
.super Ljava/lang/Object;
.source "VpnSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/vpn2/VpnSettings$VpnPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn2/VpnSettings$VpnPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 470
    iput-object p1, p0, Lcom/android/settings/vpn2/VpnSettings$VpnPreference$1;->this$1:Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings$VpnPreference$1;->this$1:Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings$VpnPreference$1;->this$1:Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    invoke-virtual {v1}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/vpn2/VpnSettings;->editProfile(Lcom/android/internal/net/VpnProfile;)V

    .line 475
    return-void
.end method
