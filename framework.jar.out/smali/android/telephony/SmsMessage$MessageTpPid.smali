.class public final enum Landroid/telephony/SmsMessage$MessageTpPid;
.super Ljava/lang/Enum;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SmsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageTpPid"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/telephony/SmsMessage$MessageTpPid;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/telephony/SmsMessage$MessageTpPid;

.field public static final enum MSG_PID_APPLICATION_PORT:Landroid/telephony/SmsMessage$MessageTpPid;

.field public static final enum MSG_PID_DEFAULT:Landroid/telephony/SmsMessage$MessageTpPid;

.field public static final enum MSG_PID_LBS_PORT:Landroid/telephony/SmsMessage$MessageTpPid;

.field public static final enum MSG_PID_SMS_HANDLED:Landroid/telephony/SmsMessage$MessageTpPid;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 122
    new-instance v0, Landroid/telephony/SmsMessage$MessageTpPid;

    const-string v1, "MSG_PID_DEFAULT"

    invoke-direct {v0, v1, v3, v3}, Landroid/telephony/SmsMessage$MessageTpPid;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/telephony/SmsMessage$MessageTpPid;->MSG_PID_DEFAULT:Landroid/telephony/SmsMessage$MessageTpPid;

    .line 123
    new-instance v0, Landroid/telephony/SmsMessage$MessageTpPid;

    const-string v1, "MSG_PID_SMS_HANDLED"

    const/16 v2, 0x40

    invoke-direct {v0, v1, v4, v2}, Landroid/telephony/SmsMessage$MessageTpPid;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/telephony/SmsMessage$MessageTpPid;->MSG_PID_SMS_HANDLED:Landroid/telephony/SmsMessage$MessageTpPid;

    .line 124
    new-instance v0, Landroid/telephony/SmsMessage$MessageTpPid;

    const-string v1, "MSG_PID_LBS_PORT"

    const/16 v2, 0x51

    invoke-direct {v0, v1, v5, v2}, Landroid/telephony/SmsMessage$MessageTpPid;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/telephony/SmsMessage$MessageTpPid;->MSG_PID_LBS_PORT:Landroid/telephony/SmsMessage$MessageTpPid;

    .line 125
    new-instance v0, Landroid/telephony/SmsMessage$MessageTpPid;

    const-string v1, "MSG_PID_APPLICATION_PORT"

    const/16 v2, 0x53

    invoke-direct {v0, v1, v6, v2}, Landroid/telephony/SmsMessage$MessageTpPid;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/telephony/SmsMessage$MessageTpPid;->MSG_PID_APPLICATION_PORT:Landroid/telephony/SmsMessage$MessageTpPid;

    .line 121
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/telephony/SmsMessage$MessageTpPid;

    sget-object v1, Landroid/telephony/SmsMessage$MessageTpPid;->MSG_PID_DEFAULT:Landroid/telephony/SmsMessage$MessageTpPid;

    aput-object v1, v0, v3

    sget-object v1, Landroid/telephony/SmsMessage$MessageTpPid;->MSG_PID_SMS_HANDLED:Landroid/telephony/SmsMessage$MessageTpPid;

    aput-object v1, v0, v4

    sget-object v1, Landroid/telephony/SmsMessage$MessageTpPid;->MSG_PID_LBS_PORT:Landroid/telephony/SmsMessage$MessageTpPid;

    aput-object v1, v0, v5

    sget-object v1, Landroid/telephony/SmsMessage$MessageTpPid;->MSG_PID_APPLICATION_PORT:Landroid/telephony/SmsMessage$MessageTpPid;

    aput-object v1, v0, v6

    sput-object v0, Landroid/telephony/SmsMessage$MessageTpPid;->$VALUES:[Landroid/telephony/SmsMessage$MessageTpPid;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 130
    iput p3, p0, Landroid/telephony/SmsMessage$MessageTpPid;->mValue:I

    .line 131
    return-void
.end method

.method public static fromInt(I)Landroid/telephony/SmsMessage$MessageTpPid;
    .locals 5
    .parameter "value"

    .prologue
    .line 137
    invoke-static {}, Landroid/telephony/SmsMessage$MessageTpPid;->values()[Landroid/telephony/SmsMessage$MessageTpPid;

    move-result-object v0

    .local v0, arr$:[Landroid/telephony/SmsMessage$MessageTpPid;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 138
    .local v1, e:Landroid/telephony/SmsMessage$MessageTpPid;
    iget v4, v1, Landroid/telephony/SmsMessage$MessageTpPid;->mValue:I

    if-ne v4, p0, :cond_0

    .line 142
    .end local v1           #e:Landroid/telephony/SmsMessage$MessageTpPid;
    :goto_1
    return-object v1

    .line 137
    .restart local v1       #e:Landroid/telephony/SmsMessage$MessageTpPid;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 142
    .end local v1           #e:Landroid/telephony/SmsMessage$MessageTpPid;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/telephony/SmsMessage$MessageTpPid;
    .locals 1
    .parameter "name"

    .prologue
    .line 121
    const-class v0, Landroid/telephony/SmsMessage$MessageTpPid;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/telephony/SmsMessage$MessageTpPid;

    return-object v0
.end method

.method public static values()[Landroid/telephony/SmsMessage$MessageTpPid;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Landroid/telephony/SmsMessage$MessageTpPid;->$VALUES:[Landroid/telephony/SmsMessage$MessageTpPid;

    invoke-virtual {v0}, [Landroid/telephony/SmsMessage$MessageTpPid;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/SmsMessage$MessageTpPid;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Landroid/telephony/SmsMessage$MessageTpPid;->mValue:I

    return v0
.end method
