.class public Lcom/android/internal/telephony/cat/CatCmdMessage;
.super Ljava/lang/Object;
.source "CatCmdMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/CatCmdMessage$2;,
        Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;,
        Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/cat/CatCmdMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

.field private mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

.field mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

.field private mEventList:[I

.field private mHasIcon:Z

.field private mInitialLanguage:Z

.field private mInput:Lcom/android/internal/telephony/cat/Input;

.field private mLanguage:Ljava/lang/String;

.field private mMenu:Lcom/android/internal/telephony/cat/Menu;

.field private mNumberOfEventList:I

.field private mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

.field private mToneSettings:Lcom/android/internal/telephony/cat/ToneSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 184
    new-instance v0, Lcom/android/internal/telephony/cat/CatCmdMessage$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .parameter "in"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    .line 34
    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mToneSettings:Lcom/android/internal/telephony/cat/ToneSettings;

    .line 35
    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    .line 36
    iput v4, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mNumberOfEventList:I

    .line 37
    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mEventList:[I

    .line 38
    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLanguage:Ljava/lang/String;

    .line 39
    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mInitialLanguage:Z

    .line 40
    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mHasIcon:Z

    .line 122
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cat/CommandDetails;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 123
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 124
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cat/Menu;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 125
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cat/Input;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mInput:Lcom/android/internal/telephony/cat/Input;

    .line 126
    sget-object v1, Lcom/android/internal/telephony/cat/CatCmdMessage$2;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 152
    :goto_0
    return-void

    .line 128
    :pswitch_0
    new-instance v1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    .line 129
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    .line 130
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    invoke-static {}, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->values()[Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aget-object v2, v2, v3

    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    goto :goto_0

    .line 133
    :pswitch_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cat/ToneSettings;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mToneSettings:Lcom/android/internal/telephony/cat/ToneSettings;

    goto :goto_0

    .line 136
    :pswitch_2
    new-instance v1, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    .line 137
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v1, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 138
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v1, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->callMsg:Lcom/android/internal/telephony/cat/TextMessage;

    goto :goto_0

    .line 141
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mNumberOfEventList:I

    .line 142
    iget v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mNumberOfEventList:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mEventList:[I

    .line 143
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mEventList:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    goto :goto_0

    .line 146
    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLanguage:Ljava/lang/String;

    .line 147
    const/4 v1, 0x1

    new-array v0, v1, [Z

    .line 148
    .local v0, tempBooleanArray:[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 149
    aget-boolean v1, v0, v4

    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mInitialLanguage:Z

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method constructor <init>(Lcom/android/internal/telephony/cat/CommandParams;)V
    .locals 3
    .parameter "cmdParams"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    .line 34
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mToneSettings:Lcom/android/internal/telephony/cat/ToneSettings;

    .line 35
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    .line 36
    iput v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mNumberOfEventList:I

    .line 37
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mEventList:[I

    .line 38
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLanguage:Ljava/lang/String;

    .line 39
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mInitialLanguage:Z

    .line 40
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mHasIcon:Z

    .line 60
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 61
    iget-boolean v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->hasIconTag:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mHasIcon:Z

    .line 63
    sget-object v1, Lcom/android/internal/telephony/cat/CatCmdMessage$2;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 119
    .end local p1
    :goto_0
    return-void

    .line 66
    .restart local p1
    :pswitch_0
    check-cast p1, Lcom/android/internal/telephony/cat/SelectItemParams;

    .end local p1
    iget-object v1, p1, Lcom/android/internal/telephony/cat/SelectItemParams;->menu:Lcom/android/internal/telephony/cat/Menu;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    goto :goto_0

    .line 75
    .restart local p1
    :pswitch_1
    check-cast p1, Lcom/android/internal/telephony/cat/DisplayTextParams;

    .end local p1
    iget-object v1, p1, Lcom/android/internal/telephony/cat/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    goto :goto_0

    .line 79
    .restart local p1
    :pswitch_2
    check-cast p1, Lcom/android/internal/telephony/cat/GetInputParams;

    .end local p1
    iget-object v1, p1, Lcom/android/internal/telephony/cat/GetInputParams;->input:Lcom/android/internal/telephony/cat/Input;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mInput:Lcom/android/internal/telephony/cat/Input;

    goto :goto_0

    .restart local p1
    :pswitch_3
    move-object v1, p1

    .line 82
    check-cast v1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 83
    new-instance v1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    .line 84
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->url:Ljava/lang/String;

    iput-object v1, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    .line 85
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    check-cast p1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    .end local p1
    iget-object v2, p1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    goto :goto_0

    .restart local p1
    :pswitch_4
    move-object v0, p1

    .line 88
    check-cast v0, Lcom/android/internal/telephony/cat/PlayToneParams;

    .line 89
    .local v0, params:Lcom/android/internal/telephony/cat/PlayToneParams;
    iget-object v1, v0, Lcom/android/internal/telephony/cat/PlayToneParams;->settings:Lcom/android/internal/telephony/cat/ToneSettings;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mToneSettings:Lcom/android/internal/telephony/cat/ToneSettings;

    .line 90
    iget-object v1, v0, Lcom/android/internal/telephony/cat/PlayToneParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    goto :goto_0

    .line 93
    .end local v0           #params:Lcom/android/internal/telephony/cat/PlayToneParams;
    :pswitch_5
    new-instance v1, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    .line 94
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/telephony/cat/CallSetupParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CallSetupParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v1, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 95
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/telephony/cat/CallSetupParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CallSetupParams;->callMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v1, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->callMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 96
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    check-cast p1, Lcom/android/internal/telephony/cat/CallSetupParams;

    .end local p1
    iget-object v2, p1, Lcom/android/internal/telephony/cat/CallSetupParams;->address:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->address:Ljava/lang/String;

    goto :goto_0

    .restart local p1
    :pswitch_6
    move-object v1, p1

    .line 99
    check-cast v1, Lcom/android/internal/telephony/cat/SetupEventListParams;

    iget v1, v1, Lcom/android/internal/telephony/cat/SetupEventListParams;->numberOfEvents:I

    iput v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mNumberOfEventList:I

    .line 100
    check-cast p1, Lcom/android/internal/telephony/cat/SetupEventListParams;

    .end local p1
    iget-object v1, p1, Lcom/android/internal/telephony/cat/SetupEventListParams;->events:[I

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mEventList:[I

    goto :goto_0

    .restart local p1
    :pswitch_7
    move-object v1, p1

    .line 103
    check-cast v1, Lcom/android/internal/telephony/cat/LanguageNotificationParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/LanguageNotificationParams;->mLanguage:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLanguage:Ljava/lang/String;

    .line 104
    check-cast p1, Lcom/android/internal/telephony/cat/LanguageNotificationParams;

    .end local p1
    iget-boolean v1, p1, Lcom/android/internal/telephony/cat/LanguageNotificationParams;->mInitialLanguage:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mInitialLanguage:Z

    goto :goto_0

    .line 107
    .restart local p1
    :pswitch_8
    check-cast p1, Lcom/android/internal/telephony/cat/OpenChannelParams;

    .end local p1
    iget-object v1, p1, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    goto/16 :goto_0

    .line 110
    .restart local p1
    :pswitch_9
    check-cast p1, Lcom/android/internal/telephony/cat/CloseChannelParams;

    .end local p1
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CloseChannelParams;->mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    goto/16 :goto_0

    .line 113
    .restart local p1
    :pswitch_a
    check-cast p1, Lcom/android/internal/telephony/cat/SendDataParams;

    .end local p1
    iget-object v1, p1, Lcom/android/internal/telephony/cat/SendDataParams;->mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    goto/16 :goto_0

    .line 116
    .restart local p1
    :pswitch_b
    check-cast p1, Lcom/android/internal/telephony/cat/ReceiveDataParams;

    .end local p1
    iget-object v1, p1, Lcom/android/internal/telephony/cat/ReceiveDataParams;->mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    goto/16 :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public geInput()Lcom/android/internal/telephony/cat/Input;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mInput:Lcom/android/internal/telephony/cat/Input;

    return-object v0
.end method

.method public geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    return-object v0
.end method

.method public getBrowserSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    return-object v0
.end method

.method public getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    return-object v0
.end method

.method public getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v0, v0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    return-object v0
.end method

.method public getEventList()[I
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mEventList:[I

    return-object v0
.end method

.method public getHasIcon()Z
    .locals 1

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mHasIcon:Z

    return v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getMenu()Lcom/android/internal/telephony/cat/Menu;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    return-object v0
.end method

.method public getNumberOfEventList()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mNumberOfEventList:I

    return v0
.end method

.method public getToneSettings()Lcom/android/internal/telephony/cat/ToneSettings;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mToneSettings:Lcom/android/internal/telephony/cat/ToneSettings;

    return-object v0
.end method

.method public getinitLanguage()Z
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mInitialLanguage:Z

    return v0
.end method

.method public hasTextAttribute()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 248
    sget-object v2, Lcom/android/internal/telephony/cat/CatCmdMessage$2;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 273
    :cond_0
    :goto_0
    return v0

    .line 251
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/Menu;->titleAttrs:Ljava/util/List;

    if-nez v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 261
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->textAttributes:Ljava/util/List;

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 264
    :pswitch_2
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mInput:Lcom/android/internal/telephony/cat/Input;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mInput:Lcom/android/internal/telephony/cat/Input;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/Input;->textAttributes:Ljava/util/List;

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 266
    :pswitch_3
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->textAttributes:Ljava/util/List;

    if-nez v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->callMsg:Lcom/android/internal/telephony/cat/TextMessage;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->callMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->textAttributes:Ljava/util/List;

    if-eqz v2, :cond_6

    :cond_5
    move v1, v0

    :cond_6
    move v0, v1

    goto :goto_0

    .line 248
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v3, 0x0

    .line 155
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    invoke-virtual {p1, v1, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 156
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual {p1, v1, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 157
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    invoke-virtual {p1, v1, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 158
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mInput:Lcom/android/internal/telephony/cat/Input;

    invoke-virtual {p1, v1, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 159
    sget-object v1, Lcom/android/internal/telephony/cat/CatCmdMessage$2;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 182
    :goto_0
    return-void

    .line 161
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->ordinal()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 165
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mToneSettings:Lcom/android/internal/telephony/cat/ToneSettings;

    invoke-virtual {p1, v1, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 168
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual {p1, v1, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 169
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->callMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual {p1, v1, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 172
    :pswitch_3
    iget v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mNumberOfEventList:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mEventList:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    .line 176
    :pswitch_4
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLanguage:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    const/4 v1, 0x1

    new-array v0, v1, [Z

    .line 178
    .local v0, tempBooleanArray:[Z
    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mInitialLanguage:Z

    aput-boolean v1, v0, v3

    .line 179
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    goto :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
