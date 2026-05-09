.class public Lcom/microsoft/xbox/idp/model/GamerTag$ReservationRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/model/GamerTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReservationRequest"
.end annotation


# instance fields
.field public Gamertag:Ljava/lang/String;

.field public ReservationId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/idp/model/GamerTag$ReservationRequest;->Gamertag:Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/xbox/idp/model/GamerTag$ReservationRequest;->ReservationId:Ljava/lang/String;

    return-void
.end method
