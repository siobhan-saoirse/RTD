/**
* Eye for an Eye perk.
* Copyright (C) 2018 Filip Tomaszewski
*
* This program is free software: you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation, either version 3 of the License, or
* (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

DEFINE_CALL_EMPTY(EyeForAnEye)

public void EyeForAnEye_Init(const Perk perk)
{
	Events.OnPlayerAttacked(perk, EyeForAnEye_OnPlayerAttacked);
}

public void EyeForAnEye_OnPlayerAttacked(const int client, const int iVictim, const int iDamage, const int iRemainingHealth)
{
	SDKHooks_TakeDamage(client, 0, 0, float(iDamage));
}
