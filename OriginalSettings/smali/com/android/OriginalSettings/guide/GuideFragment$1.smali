.class synthetic Lcom/android/settings/guide/GuideFragment$1;
.super Ljava/lang/Object;
.source "GuideFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/guide/GuideFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$settings$guide$GuideFragment$GuideModes:[I

.field static final synthetic $SwitchMap$com$android$settings$guide$GuideFragment$SettingsHeader:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 643
    invoke-static {}, Lcom/android/settings/guide/GuideFragment$SettingsHeader;->values()[Lcom/android/settings/guide/GuideFragment$SettingsHeader;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/settings/guide/GuideFragment$1;->$SwitchMap$com$android$settings$guide$GuideFragment$SettingsHeader:[I

    :try_start_0
    sget-object v0, Lcom/android/settings/guide/GuideFragment$1;->$SwitchMap$com$android$settings$guide$GuideFragment$SettingsHeader:[I

    sget-object v1, Lcom/android/settings/guide/GuideFragment$SettingsHeader;->WIFI:Lcom/android/settings/guide/GuideFragment$SettingsHeader;

    invoke-virtual {v1}, Lcom/android/settings/guide/GuideFragment$SettingsHeader;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/settings/guide/GuideFragment$1;->$SwitchMap$com$android$settings$guide$GuideFragment$SettingsHeader:[I

    sget-object v1, Lcom/android/settings/guide/GuideFragment$SettingsHeader;->BLUETOOTH:Lcom/android/settings/guide/GuideFragment$SettingsHeader;

    invoke-virtual {v1}, Lcom/android/settings/guide/GuideFragment$SettingsHeader;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    .line 181
    :goto_1
    invoke-static {}, Lcom/android/settings/guide/GuideFragment$GuideModes;->values()[Lcom/android/settings/guide/GuideFragment$GuideModes;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/settings/guide/GuideFragment$1;->$SwitchMap$com$android$settings$guide$GuideFragment$GuideModes:[I

    :try_start_2
    sget-object v0, Lcom/android/settings/guide/GuideFragment$1;->$SwitchMap$com$android$settings$guide$GuideFragment$GuideModes:[I

    sget-object v1, Lcom/android/settings/guide/GuideFragment$GuideModes;->BLUETOOTH:Lcom/android/settings/guide/GuideFragment$GuideModes;

    invoke-virtual {v1}, Lcom/android/settings/guide/GuideFragment$GuideModes;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v0, Lcom/android/settings/guide/GuideFragment$1;->$SwitchMap$com$android$settings$guide$GuideFragment$GuideModes:[I

    sget-object v1, Lcom/android/settings/guide/GuideFragment$GuideModes;->BLUETOOTH_SETTING:Lcom/android/settings/guide/GuideFragment$GuideModes;

    invoke-virtual {v1}, Lcom/android/settings/guide/GuideFragment$GuideModes;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v0, Lcom/android/settings/guide/GuideFragment$1;->$SwitchMap$com$android$settings$guide$GuideFragment$GuideModes:[I

    sget-object v1, Lcom/android/settings/guide/GuideFragment$GuideModes;->WIFI:Lcom/android/settings/guide/GuideFragment$GuideModes;

    invoke-virtual {v1}, Lcom/android/settings/guide/GuideFragment$GuideModes;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v0, Lcom/android/settings/guide/GuideFragment$1;->$SwitchMap$com$android$settings$guide$GuideFragment$GuideModes:[I

    sget-object v1, Lcom/android/settings/guide/GuideFragment$GuideModes;->WIFI_SETTINGS:Lcom/android/settings/guide/GuideFragment$GuideModes;

    invoke-virtual {v1}, Lcom/android/settings/guide/GuideFragment$GuideModes;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    return-void

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2

    .line 643
    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_0
.end method
