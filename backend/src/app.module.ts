import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { AuthModule } from './auth/auth.module';
import { UserModule } from './user/user.module';
import { FxModule } from './fx/fx.module';

@Module({
  imports: [AuthModule, UserModule, FxModule],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
