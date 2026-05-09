.class public Lcom/microsoft/onlineid/internal/configuration/Setting;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/onlineid/internal/configuration/ISetting;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/microsoft/onlineid/internal/configuration/ISetting<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final _defaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final _settingName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/configuration/Setting;->_settingName:Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/onlineid/internal/configuration/Setting;->_defaultValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getDefaultValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/configuration/Setting;->_defaultValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getSettingName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/configuration/Setting;->_settingName:Ljava/lang/String;

    return-object v0
.end method
