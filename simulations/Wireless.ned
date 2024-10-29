//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
// 

package wirelessp2pnetwork.simulations;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.contract.INetworkNode;
import inet.physicallayer.wireless.common.medium.RadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.applications.contract.IApp;


network wirelessp2p {
    parameters:
        @display("bgb=650,500;bgg=100,1,grey95");
        

    submodules:
        visualizer: <default(firstAvailableOrEmpty("IntegratedCanvasVisualizer"))> like IIntegratedVisualizer if typename != "" {
            @display("p=580,125");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=580,200");
        }
        radioMedium: RadioMedium {
            @display("p=580,275");
        }

        host1: <default("WirelessHost")> like INetworkNode {
            @display("p=50,325");
        }
        host2: <default("WirelessHost")> like INetworkNode {
            @display("p=450,325");
        }
        host3: <default("WirelessHost")> like INetworkNode {
            @display("p=250,300");
        }
        host4: <default("WirelessHost")> like INetworkNode {
            @display("p=150,450");
        }
        host5: <default("WirelessHost")> like INetworkNode {
            @display("p=350,450");
        }
}
