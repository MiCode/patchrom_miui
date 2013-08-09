.class public Lcom/android/settings/display/ScreenColorActivity;
.super Landroid/preference/PreferenceActivity;
.source "ScreenColorActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final SCREEN_COLOR_SATURATION_ARR:[Ljava/lang/String;

.field private static final SCREEN_COLOR_SATURATION_VALUE_ARR:[I

.field private static final SCREEN_COLOR_TEMPERATURE_ARR:[Ljava/lang/String;

.field private static final SCREEN_COLOR_TEMPERATURE_VALUE_ARR:[I


# instance fields
.field private mSelectKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 23
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "screen_color_temperature_warm"

    aput-object v1, v0, v3

    const-string v1, "screen_color_temperature_nature"

    aput-object v1, v0, v4

    const-string v1, "screen_color_temperature_cool"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/display/ScreenColorActivity;->SCREEN_COLOR_TEMPERATURE_ARR:[Ljava/lang/String;

    .line 27
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "screen_color_saturation_brilliant"

    aput-object v1, v0, v3

    const-string v1, "screen_color_temperature_standard"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/settings/display/ScreenColorActivity;->SCREEN_COLOR_SATURATION_ARR:[Ljava/lang/String;

    .line 40
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/display/ScreenColorActivity;->SCREEN_COLOR_TEMPERATURE_VALUE_ARR:[I

    .line 44
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/display/ScreenColorActivity;->SCREEN_COLOR_SATURATION_VALUE_ARR:[I

    return-void

    .line 40
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 44
    :array_1
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private addPreference([Ljava/lang/String;[Ljava/lang/String;[II)V
    .locals 3
    .parameter "titleArr"
    .parameter "keys"
    .parameter "values"
    .parameter "defaultValue"

    .prologue
    .line 91
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 92
    new-instance v1, Lmiui/preference/RadioButtonPreference;

    invoke-direct {v1, p0}, Lmiui/preference/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 93
    .local v1, radioButtonPreference:Lmiui/preference/RadioButtonPreference;
    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Lmiui/preference/RadioButtonPreference;->setKey(Ljava/lang/String;)V

    .line 94
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Lmiui/preference/RadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 95
    aget v2, p3, v0

    if-ne v2, p4, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    .line 96
    aget v2, p3, v0

    if-ne v2, p4, :cond_0

    .line 97
    aget-object v2, p2, v0

    iput-object v2, p0, Lcom/android/settings/display/ScreenColorActivity;->mSelectKey:Ljava/lang/String;

    .line 99
    :cond_0
    invoke-virtual {v1, p0}, Lmiui/preference/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenColorActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 102
    .end local v1           #radioButtonPreference:Lmiui/preference/RadioButtonPreference;
    :cond_2
    return-void
.end method

.method private getDefaultValue(Ljava/lang/String;[II)I
    .locals 3
    .parameter "key"
    .parameter "values"
    .parameter "defaultValue"

    .prologue
    .line 81
    invoke-static {p1, p3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 82
    .local v1, value:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 83
    aget v2, p2, v0

    if-ne v2, v1, :cond_0

    .line 87
    .end local v1           #value:I
    :goto_1
    return v1

    .line 82
    .restart local v1       #value:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v1, p3

    .line 87
    goto :goto_1
.end method

.method private updateRadioButtonPreference(Ljava/lang/String;)V
    .locals 4
    .parameter "key"

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenColorActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    .line 130
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenColorActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lmiui/preference/RadioButtonPreference;

    .line 132
    .local v2, radioButtonPreference:Lmiui/preference/RadioButtonPreference;
    if-eqz v2, :cond_0

    .line 133
    invoke-virtual {v2}, Lmiui/preference/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    .line 130
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    .end local v2           #radioButtonPreference:Lmiui/preference/RadioButtonPreference;
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v5, 0x7f0400aa

    invoke-virtual {p0, v5}, Lcom/android/settings/display/ScreenColorActivity;->setContentView(I)V

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenColorActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 58
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenColorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "screen_type"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 59
    .local v4, screenType:I
    const v5, 0x7f06004c

    invoke-virtual {p0, v5}, Lcom/android/settings/display/ScreenColorActivity;->addPreferencesFromResource(I)V

    .line 60
    packed-switch v4, :pswitch_data_0

    .line 78
    :goto_0
    return-void

    .line 62
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenColorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080072

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, screenTemperatureTitle:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenColorActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 64
    const-string v5, "persist.sys.display_prefer"

    sget-object v6, Lcom/android/settings/display/ScreenColorActivity;->SCREEN_COLOR_TEMPERATURE_VALUE_ARR:[I

    const/4 v7, 0x2

    invoke-direct {p0, v5, v6, v7}, Lcom/android/settings/display/ScreenColorActivity;->getDefaultValue(Ljava/lang/String;[II)I

    move-result v1

    .line 65
    .local v1, defaultValue:I
    sget-object v5, Lcom/android/settings/display/ScreenColorActivity;->SCREEN_COLOR_TEMPERATURE_ARR:[Ljava/lang/String;

    sget-object v6, Lcom/android/settings/display/ScreenColorActivity;->SCREEN_COLOR_TEMPERATURE_VALUE_ARR:[I

    invoke-direct {p0, v3, v5, v6, v1}, Lcom/android/settings/display/ScreenColorActivity;->addPreference([Ljava/lang/String;[Ljava/lang/String;[II)V

    .line 66
    const v5, 0x7f0c0908

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0

    .line 69
    .end local v1           #defaultValue:I
    .end local v3           #screenTemperatureTitle:[Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenColorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080073

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, screenSaturation:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenColorActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 71
    const-string v5, "persist.sys.display_ce"

    sget-object v6, Lcom/android/settings/display/ScreenColorActivity;->SCREEN_COLOR_SATURATION_VALUE_ARR:[I

    const/16 v7, 0xb

    invoke-direct {p0, v5, v6, v7}, Lcom/android/settings/display/ScreenColorActivity;->getDefaultValue(Ljava/lang/String;[II)I

    move-result v1

    .line 72
    .restart local v1       #defaultValue:I
    sget-object v5, Lcom/android/settings/display/ScreenColorActivity;->SCREEN_COLOR_SATURATION_ARR:[Ljava/lang/String;

    sget-object v6, Lcom/android/settings/display/ScreenColorActivity;->SCREEN_COLOR_SATURATION_VALUE_ARR:[I

    invoke-direct {p0, v2, v5, v6, v1}, Lcom/android/settings/display/ScreenColorActivity;->addPreference([Ljava/lang/String;[Ljava/lang/String;[II)V

    .line 73
    const v5, 0x7f0c0909

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v1, 0x1

    .line 108
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, key:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/display/ScreenColorActivity;->mSelectKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    const/4 v1, 0x0

    .line 125
    :goto_0
    return v1

    .line 112
    :cond_0
    const-string v2, "screen_color_temperature_warm"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 113
    const-string v2, "persist.sys.display_prefer"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_1
    const-string v2, "screen_color_temperature_nature"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 115
    const-string v2, "persist.sys.display_prefer"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_2
    const-string v2, "screen_color_temperature_cool"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 117
    const-string v2, "persist.sys.display_prefer"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_3
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/settings/display/ScreenColorActivity;->updateRadioButtonPreference(Ljava/lang/String;)V

    .line 124
    iput-object v0, p0, Lcom/android/settings/display/ScreenColorActivity;->mSelectKey:Ljava/lang/String;

    goto :goto_0

    .line 118
    :cond_4
    const-string v2, "screen_color_saturation_brilliant"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 119
    const-string v2, "persist.sys.display_ce"

    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 120
    :cond_5
    const-string v2, "screen_color_temperature_standard"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 121
    const-string v2, "persist.sys.display_ce"

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
