.class public Lcom/android/internal/telephony/ImsTelephonyInterface;
.super Ljava/lang/Object;
.source "ImsTelephonyInterface.java"


# static fields
.field public static isIMSEnabled:Z

.field public static sIMSInterface:Lcom/android/internal/telephony/CommandsInterface;

.field public static sIMSPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    sput-object v0, Lcom/android/internal/telephony/ImsTelephonyInterface;->sIMSInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 29
    sput-object v0, Lcom/android/internal/telephony/ImsTelephonyInterface;->sIMSPhone:Lcom/android/internal/telephony/Phone;

    .line 31
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/ImsTelephonyInterface;->isIMSEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static InitiateIMS(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V
    .locals 3
    .parameter "context"
    .parameter "sCommandsInterface"
    .parameter "sPhoneNotifier"

    .prologue
    .line 56
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ankit......BASIC"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 57
    new-instance v0, Lcom/android/internal/telephony/ims/IMSInterface;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/ims/IMSInterface;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/android/internal/telephony/ImsTelephonyInterface;->sIMSInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 59
    new-instance v0, Lcom/android/internal/telephony/PhoneProxy;

    new-instance v1, Lcom/android/internal/telephony/ims/IMSPhone;

    sget-object v2, Lcom/android/internal/telephony/ImsTelephonyInterface;->sIMSInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v1, p0, v2, p2}, Lcom/android/internal/telephony/ims/IMSPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/android/internal/telephony/ImsTelephonyInterface;->sIMSPhone:Lcom/android/internal/telephony/Phone;

    .line 61
    return-void
.end method

.method public static getIMSPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/internal/telephony/ImsTelephonyInterface;->sIMSPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public static isIMSEnabled()Z
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/android/internal/telephony/ImsTelephonyInterface;->isIMSEnabled:Z

    return v0
.end method


# virtual methods
.method public getImsInstance()Lcom/android/internal/telephony/ImsTelephonyInterface;
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/android/internal/telephony/ImsTelephonyInterface;

    invoke-direct {v0}, Lcom/android/internal/telephony/ImsTelephonyInterface;-><init>()V

    return-object v0
.end method
