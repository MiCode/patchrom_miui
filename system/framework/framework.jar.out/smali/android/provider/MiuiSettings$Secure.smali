.class public Landroid/provider/MiuiSettings$Secure;
.super Landroid/provider/SystemSettings$Secure;
.source "MiuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MiuiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Secure"
.end annotation


# static fields
.field public static final ACCESS_CONTROL_LOCK_ENABLED:Ljava/lang/String; = "access_control_lock_enabled"

.field public static APP_ENCRYPT_PASSWORD:Ljava/lang/String; = null

.field public static final BLUETOOTH_TRACE_LOG:Ljava/lang/String; = "bluetooth_trace_log"

.field public static final CHILDREN_MODE_DENY_SMS_PERMISSION:Ljava/lang/String; = "children_mode_deny_sms_permission"

.field public static final CHILDREN_MODE_ENABLED:Ljava/lang/String; = "children_mode_enabled"

.field public static final CLOUD_MESSAGING_ON:Ljava/lang/String; = "cloud_messaging_on"

.field public static final DEFAULT_EXPERIMENTAL_PERMISSION_ALLOW:I = 0x1

.field public static final DEFAULT_FIND_DEVICE_PIN_LOCK:I = 0x0

.field public static final DEFAULT_INPUT_METHOD_CHOOSED:Ljava/lang/String; = "default_input_method_choosed"

.field public static final DEFAULT_LOCAL_AUTO_BACKUP:I = 0x0

.field public static final DEFAULT_PERMANENTLY_LOCK_SIM_CHANGE:I = 0x0

.field public static final DEFAULT_VPN_ENABLE_PASSWORD:I = 0x0

.field public static final ENABLE_MIKEY_MODE:Ljava/lang/String; = "enable_mikey_mode"

.field public static final EXPERIMENTAL_PERMISSION_ALLOW:Ljava/lang/String; = "experimental_permission_allow"

.field public static FIND_DEVICE_PIN_LOCK:Ljava/lang/String; = null

.field public static FORCE_CLOCE_DIALOG_ENABLED:Ljava/lang/String; = null

.field public static final LOCAL_AUTO_BACKUP:Ljava/lang/String; = "local_auto_backup"

.field public static final LOCK_SCREEN_SECURE_AFTER_TIMEOUT:Ljava/lang/String; = "lock_screen_secure_after_timeout"

.field public static final MOBILE_POLICY:Ljava/lang/String; = "mobile_policy"

.field public static final PASSWORD_FOR_PRIVACYMODE:Ljava/lang/String; = "password_for_privacymode"

.field public static PERMANENTLY_LOCK_SIM_CHANGE:Ljava/lang/String; = null

.field public static final PRIVATE_GALLERY_LOCK_ENABLED:Ljava/lang/String; = "private_gallery_lock_enabled"

.field public static final PRIVATE_GALLERY_LOCK_PATTERN_VISIBLE:Ljava/lang/String; = "private_gallery_lock_pattern_visible_pattern"

.field public static final PRIVATE_SMS_LOCK_ENABLED:Ljava/lang/String; = "private_sms_lock_enabled"

.field public static final PRIVATE_SMS_LOCK_PATTERN_VISIBLE:Ljava/lang/String; = "private_sms_lock_pattern_visible_pattern"

.field public static REGISTER_FIND_DEVICE_SIM_NUMBER:Ljava/lang/String; = null

.field public static final SCREEN_BUTTONS_HAS_BEEN_DISABLED:Ljava/lang/String; = "screen_buttons_has_been_disabled"

.field public static final SCREEN_BUTTONS_TURN_ON:Ljava/lang/String; = "screen_buttons_turn_on"

.field public static final SYNC_ON_WIFI_ONLY:Ljava/lang/String; = "sync_on_wifi_only"

.field public static final TST_SUPPORT:Ljava/lang/String; = "tst_support"

.field public static final TST_SUPP_NOT_SUPPORT:I = 0x0

.field public static final TST_SUPP_SUPPORT:I = 0x1

.field public static final TST_SUPP_UNKNOWN:I = -0x1

.field public static UNLOCK_FAILED_ATTEMPTS:Ljava/lang/String; = null

.field public static final UPLOAD_LOG:Ljava/lang/String; = "upload_log_pref"

.field public static final USB_MODE:Ljava/lang/String; = "usb_mode"

.field public static final USB_MODE_ASK_USER:I = 0x0

.field public static final USB_MODE_CHARGE_ONLY:I = 0x1

.field public static final USB_MODE_MOUNT_STORAGE:I = 0x2

.field public static final VPN_ENABLE_PASSWORD:Ljava/lang/String; = "vpn_password_enable"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1119
    const-string/jumbo v0, "resister_find_device_sim_number"

    sput-object v0, Landroid/provider/MiuiSettings$Secure;->REGISTER_FIND_DEVICE_SIM_NUMBER:Ljava/lang/String;

    .line 1125
    const-string/jumbo v0, "unlock_failed_attempts"

    sput-object v0, Landroid/provider/MiuiSettings$Secure;->UNLOCK_FAILED_ATTEMPTS:Ljava/lang/String;

    .line 1131
    const-string/jumbo v0, "permanently_lock_sim_change"

    sput-object v0, Landroid/provider/MiuiSettings$Secure;->PERMANENTLY_LOCK_SIM_CHANGE:Ljava/lang/String;

    .line 1138
    const-string v0, "find_device_pin_lock"

    sput-object v0, Landroid/provider/MiuiSettings$Secure;->FIND_DEVICE_PIN_LOCK:Ljava/lang/String;

    .line 1144
    const-string v0, "force_close_dialog_enabled"

    sput-object v0, Landroid/provider/MiuiSettings$Secure;->FORCE_CLOCE_DIALOG_ENABLED:Ljava/lang/String;

    .line 1231
    const-string v0, "app_encrypt_password"

    sput-object v0, Landroid/provider/MiuiSettings$Secure;->APP_ENCRYPT_PASSWORD:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1083
    invoke-direct {p0}, Landroid/provider/SystemSettings$Secure;-><init>()V

    return-void
.end method

.method public static getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1271
    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public static getCtaSupported(Landroid/content/ContentResolver;)I
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 1263
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    .line 1264
    const/4 v0, 0x0

    .line 1267
    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "tst_support"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static isForceCloseDialogEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1147
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MiuiSettings$Secure;->FORCE_CLOCE_DIALOG_ENABLED:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v0, v2, :cond_0

    .line 1151
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 1147
    goto :goto_0

    .line 1149
    :catch_0
    move-exception v2

    .line 1151
    const-string/jumbo v2, "user"

    sget-object v3, Lmiui/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-eqz v2, :cond_2

    :cond_1
    move v1, v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 1275
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1276
    return-void

    .line 1275
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setCtaSupported(Landroid/content/ContentResolver;I)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "ctaSupport"    # I

    .prologue
    .line 1255
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    .line 1260
    :goto_0
    return-void

    .line 1259
    :cond_0
    const-string/jumbo v0, "tst_support"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
