.class synthetic Lcom/android/settings/wifi/WpsActivity$6;
.super Ljava/lang/Object;
.source "WpsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WpsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$settings$wifi$WpsActivity$State:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 205
    invoke-static {}, Lcom/android/settings/wifi/WpsActivity$State;->values()[Lcom/android/settings/wifi/WpsActivity$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/settings/wifi/WpsActivity$6;->$SwitchMap$com$android$settings$wifi$WpsActivity$State:[I

    :try_start_0
    sget-object v0, Lcom/android/settings/wifi/WpsActivity$6;->$SwitchMap$com$android$settings$wifi$WpsActivity$State:[I

    sget-object v1, Lcom/android/settings/wifi/WpsActivity$State;->WPS_COMPLETE:Lcom/android/settings/wifi/WpsActivity$State;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WpsActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/settings/wifi/WpsActivity$6;->$SwitchMap$com$android$settings$wifi$WpsActivity$State:[I

    sget-object v1, Lcom/android/settings/wifi/WpsActivity$State;->CONNECTED:Lcom/android/settings/wifi/WpsActivity$State;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WpsActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/android/settings/wifi/WpsActivity$6;->$SwitchMap$com$android$settings$wifi$WpsActivity$State:[I

    sget-object v1, Lcom/android/settings/wifi/WpsActivity$State;->WPS_FAILED:Lcom/android/settings/wifi/WpsActivity$State;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WpsActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
