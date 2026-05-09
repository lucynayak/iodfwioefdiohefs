.class public final Le1/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le1/u$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le1/d;->b(Le1/a$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le1/d$d;


# direct methods
.method public constructor <init>(Le1/d$d;)V
    .locals 0

    iput-object p1, p0, Le1/d$b;->a:Le1/d$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Le1/y;)V
    .locals 2

    .line 1
    iget-object p1, p1, Le1/y;->c:Lorg/json/JSONObject;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le1/d$b;->a:Le1/d$d;

    const-string v1, "access_token"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Le1/d$d;->a:Ljava/lang/String;

    iget-object v0, p0, Le1/d$b;->a:Le1/d$d;

    const-string v1, "expires_at"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Le1/d$d;->b:I

    return-void
.end method
